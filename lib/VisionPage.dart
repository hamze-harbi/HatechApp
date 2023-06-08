import 'package:flutter/material.dart';

class VisionPage extends StatefulWidget {
  @override
  _VisionPageState createState() => _VisionPageState();
}

class _VisionPageState extends State<VisionPage> {
  List<bool> selectedOptions = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vision'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // Logique à ajouter pour gérer le lien "Vision"
              },
              child: Text(
                'Vision',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Je suis gêné(e) par la lumière',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            CheckboxListTile(
              title: Text('Pas du tout'),
              value: selectedOptions[0],
              onChanged: (bool? value) {
                setState(() {
                  selectedOptions[0] = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Un peu'),
              value: selectedOptions[1],
              onChanged: (bool? value) {
                setState(() {
                  selectedOptions[1] = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Plus que jamais'),
              value: selectedOptions[2],
              onChanged: (bool? value) {
                setState(() {
                  selectedOptions[2] = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Beaucoup'),
              value: selectedOptions[3],
              onChanged: (bool? value) {
                setState(() {
                  selectedOptions[3] = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Enormement'),
              value: selectedOptions[4],
              onChanged: (bool? value) {
                setState(() {
                  selectedOptions[4] = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Logique à ajouter pour le bouton "Suivant"
              },
              child: Text('Suivant'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VisionPage(),
  ));
}
