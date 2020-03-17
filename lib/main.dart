import 'package:flutter/material.dart';
//import 'package:ninja_id/HomeScreen.dart';

void main() => runApp(MaterialApp(
  
    home: Ninja(),
    debugShowCheckedModeBanner: false,
));


class Ninja extends StatefulWidget {
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {

  int lvl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Ninja'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50.0, 80.0, 50.0, 0.0),
        child: Column(
          children: <Widget>[
            Center(
                child: CircleAvatar(
                backgroundImage: AssetImage('assets/25530744.jpg'),
                radius: 80.0,
                
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.green,
            ),
            Text(
            'Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            ),
            Text(
            'Rishabh Jha',
            style: TextStyle(
              color: Colors.redAccent,
              letterSpacing: 2.0,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30.0),
            Text(
            'Ninja Lvl :-',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
            ),
            
            Text(
            '$lvl',
            style: TextStyle(
              color: Colors.redAccent,
              letterSpacing: 2.0,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20.0,),
            Icon(
               Icons.brightness_medium,
               color: Colors.redAccent,
               size: 30.0,
            ),
            Text(
              'The Game Changer',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
              ),
            ),
          ],
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            lvl +=1;
          });
        },
        child: Icon(
          Icons.power_settings_new,
          color: Colors.black),
        backgroundColor: Colors.yellow[800],
        ),
    );
  }
}