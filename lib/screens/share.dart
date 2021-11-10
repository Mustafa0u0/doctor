import 'package:flutter/material.dart';

class sharePage extends StatefulWidget {
  const sharePage({Key? key}) : super(key: key);

  @override
  _sharePageState createState() => _sharePageState();
}

class _sharePageState extends State<sharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff59C748),
        centerTitle: true,
        title: Text('مشاركة التطبيق'),
      ),
      body: Container(
        child: Center(
          child: Text('مشاركة التطبيق'),
        ),
      ),
    );
  }
}
