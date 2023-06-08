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
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QuestionWidget(
                question: 'Question 1',
              ),
              QuestionWidget(
                question: 'Question 2',
              ),
              QuestionWidget(
                question: 'Question 3',
              ),
              QuestionWidget(
                question: 'Question 4',
              ),
              QuestionWidget(
                question: 'Question 5',
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

class QuestionWidget extends StatefulWidget {
  final String question;

  const QuestionWidget({required this.question});

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        SizedBox(width: 8.0),
        Text(
          widget.question,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyPage(),
  ));
}
