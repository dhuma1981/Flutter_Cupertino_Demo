import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino/ui/pages/basic_page.dart';
import 'package:flutter_cupertino/ui/pages/dialog_page.dart';

class CupertinoDemo extends StatefulWidget {
  @override
  _CupertinoDemoState createState() => _CupertinoDemoState();
}

class _CupertinoDemoState extends State<CupertinoDemo> {
  var selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: selectedTab,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.info), title: Text("Basic")),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), title: Text("Dailog")),
          ],
          onTap: (selectedValue) {
            setState(() {
              selectedTab = selectedValue;
            });
          },
        ),
        appBar: CupertinoNavigationBar(
          trailing: Icon(CupertinoIcons.share),
          middle: Text("Cupertino TabBar & TabView "),
          actionsForegroundColor: CupertinoColors.inactiveGray,
        ),
        body: CupertinoTabView(
          builder: (context) {
            return selectedTab == 0 ? BasicPage() : DialogPage();
          },
        ));
  }
}
