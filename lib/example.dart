import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:flutter/foundation.dart';


class Notes {
  final String name;
  final String description;

  Notes({@required this.name, @required this.description});
}

class HomePage extends StatelessWidget{


  List<Notes> notes = [
    Notes(
        name: 'crunchy', description: 'a fierce Alligator with many teeth'
    ),
    Notes(
        name: 'grunchy', description:' too big and hungry looking'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[900],
      appBar: AppBar(

          title: Text('Share Appbar '),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0),
      body: Column(
        children: notes.map((Notes notes) => Card(
          child: ListTile(
            title:Text(notes.name),
            subtitle: Text(notes.description),
            onTap: ()=>share(context, notes),
          ),
        )).toList(),
      ),
    );


  }
  void share(BuildContext context, Notes notes) {
    final RenderBox box = context.findRenderObject();
    final String text = '${notes.name} - ${notes.description}';

    Share.share(
      text, subject: notes.description,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }
}

