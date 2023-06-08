import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'), // Remplacez par le chemin de votre image de fond
            fit: BoxFit.cover,
          ),
        ),

        child:  Padding(

          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                },
                child: Text(
                  'Vision',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                
              ),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {
                  // Action à effectuer lorsque le lien est cliqué
                },
                child: Text(
                  'Audition',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {

                  // Action à effectuer lorsque le lien est cliqué
                },
                child: Text(
                  'Tactile',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {
                  // Action à effectuer lorsque le lien est cliqué
                },
                child: Text(
                  'Gustatif',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              InkWell(
                onTap: () {
                  // Action à effectuer lorsque le lien est cliqué
                },
                child: Text(
                  'Olfactif',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Action à effectuer lorsque le bouton est cliqué
                  },
                  child: Text('Suivant'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyPage(),
  ));
}
