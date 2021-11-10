import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:your_doctor/GPS.dart';
import 'package:your_doctor/screens/Home.dart';
import 'package:your_doctor/screens/info.dart';
import 'package:your_doctor/screens/rules.dart';
import 'package:your_doctor/screens/share.dart';
import 'package:your_doctor/screens/team.dart';
import 'package:your_doctor/wiget/drawer.dart';

import 'account.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var currentPage = DrawerSections.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.home) {
      container = homepage();
    } else if (currentPage == DrawerSections.account) {
      container = accountPage();
    } else if (currentPage == DrawerSections.team) {
      container = teamPage();
    } else if (currentPage == DrawerSections.info) {
      container = InfoPage();
    } else if (currentPage == DrawerSections.rules) {
      container = rulesPage();
    } else if (currentPage == DrawerSections.share) {
      container = sharePage();
    }
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: container,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [Mydrawerheader(), Mydrawerlist()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Mydrawerlist() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "الصفحة الرئيسية", Icons.home,
              currentPage == DrawerSections.home ? true : false),
          Divider(),
          menuItem(2, "حسابي", Icons.person,
              currentPage == DrawerSections.account ? true : false),
          Divider(),
          menuItem(3, "فريق العمل", Icons.people,
              currentPage == DrawerSections.team ? true : false),
          Divider(),
          menuItem(4, "عن التطبيق", Icons.info,
              currentPage == DrawerSections.info ? true : false),
          Divider(),
          menuItem(5, "شروط الاستخدام", Icons.checklist_rtl_outlined,
              currentPage == DrawerSections.rules ? true : false),
          Divider(),
          menuItem(6, "مشاركة التطبيق", Icons.share,
              currentPage == DrawerSections.share ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.home;
            } else if (id == 2) {
              currentPage = DrawerSections.account;
            } else if (id == 3) {
              currentPage = DrawerSections.team;
            } else if (id == 4) {
              currentPage = DrawerSections.info;
            } else if (id == 5) {
              currentPage = DrawerSections.rules;
            } else if (id == 6) {
              currentPage = DrawerSections.share;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  account,
  team,
  info,
  rules,
  share,
}
