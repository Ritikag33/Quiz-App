import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  //startQuiz is an arguement that contains function as a value
  const StartScreen({this.startQuiz, super.key});

  final void Function()? startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/flutter_logo.png',
          width: 200,
          //Adding transparency
          //color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white,backgroundColor:const Color(0xFF0099A0)),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
          
        ),
      ],
    ));
  }
}
