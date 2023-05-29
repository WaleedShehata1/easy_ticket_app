import 'package:flutter/material.dart';

class FaqModel {
  final String question;
  final String answer;

  FaqModel({required this.question, required this.answer});
}

class FAQScreen extends StatefulWidget {
  static const String routeName = 'FAQ';

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  List<bool>? _visibilityList;

  @override
  void initState() {
    super.initState();
    _visibilityList = List<bool>.filled(faqs.length, false);
  }

  final List<FaqModel> faqs = [
    FaqModel(
      question: 'Question 1',
      answer: 'Answer 1',
    ),
    FaqModel(
      question: 'Question 2',
      answer: 'Answer 2',
    ),
    FaqModel(
      question: 'Question 3',
      answer: 'Answer 2',
    ),
    FaqModel(
      question: 'Question 4',
      answer: 'Answer 2',
    ),
    FaqModel(
      question: 'Question 5',
      answer: 'Answer 2',
    ),
    FaqModel(
      question: 'Question 6',
      answer: 'Answer 2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF48265),
        title: Text('FAQs'),
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          final faq = faqs[index];
          return Container(
            // decoration: BoxDecoration(
            //   border: Border(
            //     bottom: BorderSide(
            //       color: Colors.grey[300]!,
            //     ),
            //   ),
            // ),
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _visibilityList![index] = !_visibilityList![index];
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    faq.question,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    visible: _visibilityList![index],
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(faq.answer),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
