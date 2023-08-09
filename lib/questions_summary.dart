import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
            //Transforming List of map into list of widgets
            children: summaryData.map((data) {
          //Used to display multiple widgets horizontally
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 12,
                    backgroundColor: data['correct_answer'] == data['user_answer']
                        ? const Color(0xFF0099A0)
                        : const Color.fromARGB(133, 242, 69, 69),
                   
                    child:
                        Text(((data['question_index'] as int) + 1).toString()),),
                //Only expands such that it fills the space provided by the row
                const SizedBox(width: 10,),
                Expanded(
                  
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String,
                          style:
                              const TextStyle(color: Colors.black, fontSize: 18)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(color: Color.fromARGB(133, 242, 69, 69), fontSize: 14),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                            color: Color(0xFF0099A0), fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
