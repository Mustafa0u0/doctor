import 'package:flutter/material.dart';

class teamPage extends StatefulWidget {
  const teamPage({Key? key}) : super(key: key);

  @override
  _teamPageState createState() => _teamPageState();
}

class _teamPageState extends State<teamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff59C748),
        centerTitle: true,
        title: Text('فريق العمل'),
      ),
      body: Container(
        child: Center(
          child: Text('فريق العمل'),
        ),
      ),
    );
  }
}
