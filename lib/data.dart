import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Verify.dart';

class data extends StatelessWidget {
  const data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff59C748),
          centerTitle: true,
          title: Text('بيانات الإستشارة')),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 10,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                ),
                hintText: "الاسم الكامل",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(29)))),
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone_android,
                ),
                hintText: "رقم الجوال",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(29)))),
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.access_time,
                ),
                hintText: "وقت الاستشارة",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(29)))),
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.note,
                ),
                hintText: "ملاحظاتك",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(29)))),
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Verify()),
              );
            },
            color: Color(0xff59C748),
            child: Text(
              "طلب الاستشارة",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'cairo', fontSize: 18),
            ),
          ),
        ]),
      )),
    );
  }
}
