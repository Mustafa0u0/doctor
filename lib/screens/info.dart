import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff59C748),
        centerTitle: true,
        title: Text('عن التطبيق'),
      ),
      body: Container(
        child: Center(
          child: Text('عن التطبيق'),
        ),
      ),
    );
  }
}
