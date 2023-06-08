import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_hatech/VisionPage.dart';

import 'Quest1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SENOPROFILE'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/ha.jpg', 
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 16.0,
            bottom: 16.0,
            child: ElevatedButton(
              onPressed: () {
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> MyHomePage()),
                );
              },
              child: Text('Débuter ma séance'),
              
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // Couleur de l'arrière-plan personnalisée
      appBar: AppBar(
        title: Text('SENOPROFILE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Êtes-vous hypersensible ?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Qu\'est ce que l\'hypersensibilité ? ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> hyperPage()),
                );
                  },
                  child: Text('Suivant'),
                ),
              ),
            ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class hyperPage extends StatefulWidget {

  @override
  _MymenuState createState() => _MymenuState();
}

class _MymenuState extends State<hyperPage> {
  String dropdownValue = 'Hypersensibilité';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Couleur de l'arrière-plan personnalisée
      appBar: AppBar(
        title: Text('SensoProfile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Qu\'est ce que Hypersensibilité  ?',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 150),

            SizedBox(height: 20),
            Text(
              ' L\'hypersensibilité, est une sensibilité plus haute que la moyenne, provisoirement ou durablement, pouvant être vécue avec difficulté par la personne concernée elle-même ou perçue comme « exagérée », voire « extrême », par son entourage',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'SensoProfile n\'est pas un outils diagnostic mais un outils de detections informative ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
             Navigator.push(
                    context,
             MaterialPageRoute(builder: (context) =>VisionPage()),
  );
              },
              child: Text('Suivant'),
            ),
          ],
        ),
      ),
    );
  }
}
              











  




