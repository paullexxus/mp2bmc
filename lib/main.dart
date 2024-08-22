import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return MaterialApp
    (
      title: "Hello BMC Flutter",
      home: Scaffold
      (
        appBar: AppBar( title:
        Text("Hello BMC Flutter"),
        backgroundColor: Colors.blue,
      ),

    body: Builder(builder: (Context)=> Center
      (
          child: Column
            (children: [
              Text(
              'Hello Flutter',
              style: TextStyle
              (
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent
              ),
            ),

            Text
            (
              'Dscover Flutter',
              style: TextStyle
              (
                fontSize: 30,
                color: Colors.blueAccent
              ),
            ),
            Image.network
              (
                'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                height: 350
              ),
            ElevatedButton
            (child: Text('Contact us'),
              onPressed: () => ContactUS(Context),
            )
          ],)
         )
        )
      )
    );
  }
}

void ContactUS(BuildContext context)
{
  showDialog(
    context: context,
    builder: (BuildContext context)
      {
        return AlertDialog(
          title: Text('contact us'),
          content: Text('mail us at hello@world.com'),
          actions: <Widget>[
            TextButton(
              child: Text('close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      }
  );
}