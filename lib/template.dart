
import 'package:flutter/material.dart';
import 'package:handwriting_recognition/camera.dart';
import 'package:handwriting_recognition/grid list.dart';
import 'package:image_picker/image_picker.dart';



void main() {
  runApp(MaterialApp(
    home: homeP(),
  ));
}

class homeP extends StatefulWidget {
  @override
  _homePState createState() => _homePState();
}

class _homePState extends State<homeP> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(

          title: Text('Home '),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          leading: Icon(Icons.menu),
        ),
        body: Padding(
          padding: EdgeInsets.all(16 ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                //SizedBox(height: 20.0),

                Container(
                  child: Center(
                    child: Text('Welcome',
                      style: TextStyle(
                        color: Colors.grey[400],
                        letterSpacing: 2.0,
                        fontSize: 38,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                ),

                //SizedBox(height: 20.0),
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 5.0),
                        Text('Select Image from Gallery',
                          style: TextStyle(
                              color: Colors.cyanAccent,
                              letterSpacing: 2.0,
                              fontSize: 10),
                        ),

                        IconButton(
                          icon: Icon(Icons.insert_drive_file,
                              color: Colors.greenAccent,
                              size: 38.0),
                          onPressed: (){
                            //getImage(false);
                          },
                        ),
                        SizedBox(height: 50.0),
                        Text('Snap a picture',
                          style: TextStyle(
                              color: Colors.cyanAccent,
                              letterSpacing: 2.0,
                              fontSize: 10),
                        ),
                        IconButton(
                          icon: Icon(Icons.camera_alt,
                              color: Colors.greenAccent,
                              size: 38.0),
                          onPressed: (){
                            //getImage(true);
                          },

                        ),

                        //_image == null? Container() : Image.file(_image, height: 300.0, width: 300.0,),

                      ],
                    ),
                  ),


                ),


                Container(
                  child: Column(
                    children: [
                      Divider(
                            height: 0.0,
                        color: Colors.grey[800],
                          ),
                      Row(
                        children: <Widget>[
                              //SizedBox(width: 30.0),

                              CircleAvatar(
                                backgroundImage: AssetImage('assets/download1.png'),
                              ),
                            ],
                          ),
                    ],
                  ),
                ),

                  ],

          ),
        )
        );

  }
}

//Widget myWidget(BuildContext context) {
  //return MediaQuery.removePadding(
    //  context: context,
      //removeTop: true,
      //child: ListView.builder(
        //itemCount: 2,
        //itemBuilder: (BuildContext context, int index) => ListTile(title: Text('item $index')),
      //)
  //);
//}