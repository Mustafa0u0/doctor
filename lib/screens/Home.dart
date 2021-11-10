import 'package:flutter/material.dart';
import 'package:your_doctor/GPS.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "asssets/images/3.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
        color: Colors.black54,
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(),
            Positioned(
                bottom: 90,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => gps(),
                        ));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 90),
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff59C748),
                      ),
                      child: const Center(
                        child: Text(
                          'اطلب استشارة الأن',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                )),
            Positioned(
              bottom: 230,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'تطمن على صحتك و صحة احبابك من خلال دكاترة مختصين',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      height: 1.2,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
