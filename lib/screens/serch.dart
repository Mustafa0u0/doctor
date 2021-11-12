import 'package:flutter/material.dart';
import 'package:your_doctor/data.dart';

class serch extends StatelessWidget {
  const serch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff59C748),
        centerTitle: true,
        title: Text('البحث'),
      ),
      body: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 45,
                ),
                Container(
                  alignment: Alignment.center,
                  
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => data()),
                    );
                  },
                  color: Color(0xff59C748),
                  child: Text(
                    "إلغاء الامر",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'cairo', fontSize: 18),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
