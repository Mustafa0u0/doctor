import 'package:flutter/material.dart';

class rulesPage extends StatefulWidget {
  const rulesPage({Key? key}) : super(key: key);

  @override
  _rulesPageState createState() => _rulesPageState();
}

class _rulesPageState extends State<rulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff59C748),
        centerTitle: true,
        title: Text('شروط الاستخدام'),
      ),
      body: Container(
        child: Center(
          child: Text('شروط الاستخدام'),
        ),
      ),
    );
  }
}
