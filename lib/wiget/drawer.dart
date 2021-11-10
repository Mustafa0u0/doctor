import 'package:flutter/material.dart';

class Mydrawerheader extends StatefulWidget {
  const Mydrawerheader({Key? key}) : super(key: key);

  @override
  _MydrawerheaderState createState() => _MydrawerheaderState();
}

class _MydrawerheaderState extends State<Mydrawerheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff59C748),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(
                  "asssets/images/7.png",
                ),
              ),
            ),
          ),
          Text(
            'your name',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }
}
