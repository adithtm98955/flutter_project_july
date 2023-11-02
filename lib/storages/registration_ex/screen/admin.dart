import 'package:flutter/material.dart';
import 'package:flutter_project_july/storages/registration_ex/reg_sql_function.dart';

class AdminHome extends StatefulWidget {
  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  List<Map<String,dynamic>> data= [];

  ///for storing all the users from the db

  @override

  ///when this page loads show all the registered users in the screen
  void initState() {
    Refresh();
    super.initState();
  }

  void Refresh() async {
    var mydata = await SQL_Reg_function.getAll();

    /// function for fetching all the values from db
    setState(() {
      data = mydata;
    });
  }

  void delete(int id) async {
    await SQL_Reg_function.Deleteuser(id);
    Refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int index) {
            return Card(
              color: Colors.deepPurple[200],
              child: ListTile(
                title: Text('${data[index]['name']}'),
                subtitle: Text('${data[index]['email']}'),
                trailing: Wrap(children: [
                  IconButton(
                    onPressed: () {
                      // update(data[index]['id']);
                      showSheet(data[index]['id']);
                    },
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      delete(data[index]['id']);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ]),
              ),
            );
          }),
    );
  }

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();

  void showSheet(int? id) async {
    if (id != null) {
      final existingData = data.firstWhere((element) => element['id'] == id);
      namecontroller.text = existingData['name'];
      emailcontroller.text = existingData['email'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) =>
            Container(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: namecontroller,
                    decoration: const InputDecoration(hintText: "Name"),
                  ),

                  const SizedBox(height: 10,),

                  TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(hintText: "Email"),
                  ),

                  const SizedBox(height: 10,),

                  ElevatedButton(
                      onPressed: () async {
                        if (id != null) {
                          await update(id);
                        }
                        namecontroller.text = "";
                        emailcontroller.text = "";
                        Navigator.of(context).pop();
                      },
                      child: Text("Update profile"))
                ],
              ),
            ));
  }

  Future<void> update(int id) async {
    await SQL_Reg_function.update(id, namecontroller.text, emailcontroller.text);
    Refresh();
  }
}
