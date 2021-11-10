import 'package:flutter/material.dart';

class accountPage extends StatefulWidget {
  const accountPage({Key? key}) : super(key: key);

  @override
  _accountPageState createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff59C748),
        centerTitle: true,
        title: Text('حسابي'),
      ),
      body: Container(
        child: Center(
          child: Text('حسابي'),
        ),
      ),
    );
  }
}
