import 'package:flutter/material.dart';
import 'package:flutter_project_july/storages/sqflite_ex/sqflite_crud/sql_functions.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(MaterialApp(home: Contact_Book(),));
}

class Contact_Book extends StatefulWidget {

  @override
  State<Contact_Book> createState() => _Contact_BookState();
}

class _Contact_BookState extends State<Contact_Book> {

  List<Map<String , dynamic>> contact=[];
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contacts"),
      ),
      body: isLoading
          ? Text("Creat new contact" ,
        style: GoogleFonts.castoroTitling(fontSize: 20),
      ):
      ListView.builder(
          itemCount: contact.length,
          itemBuilder: (context , index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.primaries[index % Colors.primaries.length]
                ),
                title: Text(contact[index]['cname']),
                subtitle: Text(contact[index]['cnumber']),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: ()=>showSheet(contact[index]['id']),
                        icon: Icon(Icons.edit)),

                    IconButton(
                        onPressed: ()=> deleteContact(contact[index]['id']),
                        icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showSheet(null),
        child: Icon(Icons.person_add_alt_1_outlined),
      ),
    );
  }

  final name_controller = TextEditingController();
  final num_controller = TextEditingController();
  void showSheet(int? id) {
    if(id !=null){
      final existingcontact = contact.firstWhere((element) => element['id'] == id);
      name_controller.text = existingcontact['cname'];
      num_controller.text = existingcontact['cnumber'];
    }

    showModalBottomSheet(
      isScrollControlled: true,
        context: context, builder: (contact){
      return Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom + 120
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: name_controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),hintText: "Name"
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              controller: num_controller,
              decoration:const InputDecoration(
                  border:OutlineInputBorder(),hintText: "Number"
              ),
            ),

            SizedBox(height: 20,),

            ElevatedButton(
                onPressed: (){
                  if(id == null){
                    createcontact(name_controller.text , num_controller.text);
                  }
                  if(id != null){
                    updateContact(id);
                  }
                  name_controller.text = "" ;
                  num_controller.text = "" ;
                  Navigator.of(context).pop();

                },
                child:Text(
                    id == null ? "Create contact" : "Update contact" )
            )
          ],
        ),
      );
    });
  }

  Future<void> createcontact(String name , String number) async{

    await SQL_Functions.addnewContact(name,number);
    readContact_and_refresh_Ui();
  }
  @override
  void iniState(){
    readContact_and_refresh_Ui();
    super.initState();
  }

  Future<void> readContact_and_refresh_Ui() async{
    final  mycontacts = await SQL_Functions.readContacts();
    setState(() {
      contact = mycontacts;
      isLoading = false;
    });
  }

  Future<void> updateContact(int id) async{
    await SQL_Functions.updateContactt( id , name_controller.text ,num_controller.text);
    readContact_and_refresh_Ui();  //  to update the list after updating contact
  }

 Future<void> deleteContact(int id) async{
   showDialog<String>(
   context: context,
   barrierDismissible: false, // user must tap button!
   builder: (BuildContext context) =>AlertDialog(
   title: const Text('Delete Contact ?'),
   content:const  Text("Do yo want to delete the contact"),
   actions: <Widget>[
     TextButton(onPressed: () async{
       await SQL_Functions.removeContact(id);
       readContact_and_refresh_Ui();
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully Deleted")));
       Navigator.pop(context);
     },
         child: Text("Yes")),

   TextButton(
   onPressed: ()=> Navigator.of(context).pop(),
     child: const Text('No'),

   ),
   ],
   )
   );

 }
}
