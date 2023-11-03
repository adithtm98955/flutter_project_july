
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main()
{
  runApp(MaterialApp(home: Permission_Handling(),));
}

class Permission_Handling extends StatelessWidget {
  const Permission_Handling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Permission Handler"),),
      body: Center(
        child: Column(
          children: [

            ElevatedButton(
                onPressed: requestCameraPermission,
                child: Text("Request Camera Permission")
            ),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed:requestMultiplePermission ,
                child: Text("Request Multipile Permission ")
            ),

            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: openPermissionSettings,
                child: Text("Open Permission Settings",)
            )
          ],
        ),
      ),
    );
  }

  void requestCameraPermission() async{
    /// status can be either be : grande , denied , restricted or PermanentlyDenied

    var status = await Permission.camera.status;
    if(status.isGranted){
      print("Permission is Granted");
    }
    else if(status.isDenied){
      if(await Permission.camera.request().isGranted){
        print("Permission was Granted");
      }
    }
  }

  void requestMultiplePermission() async{

    Map<Permission , PermissionStatus> statuses = await[
      Permission.location,
      Permission.storage,
      Permission.phone,
      Permission.videos
    ].request();
    print("Location permission : ${statuses[Permission.location]},"
          "Storage Permission : ${statuses[Permission.storage]}");
  }

  void openPermissionSettings(){

    openAppSettings();
  }
}
