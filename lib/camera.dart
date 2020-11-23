import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  File _image;
  Future getImage(bool isCamera) async {
    File image;

    if (isCamera) {
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState((){
      _image = image;

      showImage(){
        if(image == null){
          return Text("No Image selected here",
              style: TextStyle(
              color: Colors.grey[400],
              letterSpacing: 2.0,
              fontSize: 20),
          );



        }else {
          Image.file(image,width:200,height:400);
        }
      }
    });
  }


  @override
  Widget build(BuildContext context){

    return Scaffold(
          backgroundColor: Colors.grey[900],

      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0),
            Text('Select Image from Gallery',
              style: TextStyle(
              color: Colors.amber,
              letterSpacing: 2.0,
              fontSize: 20),
      ),

            IconButton(
              icon: Icon(Icons.insert_drive_file,
                color: Colors.grey[400],
              size: 38.0),
              onPressed: (){
                getImage(false);
              },
            ),
            SizedBox(height: 50.0),
            Text('Snap a picture',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20),
            ),
            IconButton(
              icon: Icon(Icons.camera_alt,
                  color: Colors.grey[400],
                  size: 38.0),
              onPressed: (){
                getImage(true);
              },

            ),

            _image == null? Container() : Image.file(_image, height: 300.0, width: 300.0,),

          ],
        ),
      ),
      //floatingActionButton: (
        //onPressed: (){},
        //ild: Text('Analyse Image'),
       // backgroundColor: Colors.blue,
      );




  }
}
