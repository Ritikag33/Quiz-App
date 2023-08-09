
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{

  const StyledText({required this.text,super.key});
  final String text;
  @override
  Widget build(context){
    return Text(
      text,
      style:const TextStyle(color:Colors.black ,fontSize: 24)
    );
  }
}
