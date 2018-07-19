import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino/ui/pages/tabbar_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        trailing: Icon(CupertinoIcons.share),
        middle: Text("Cupertino Demo"),
        actionsForegroundColor: CupertinoColors.inactiveGray,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(),
            Text(
              "CupertinoNavigationBar\nCupertinoButton\nCupertinoPageRoute",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.0,
            ),
            CupertinoButton(
                child: Text(
                  "Go To Tab Page",
                  style: TextStyle(fontSize: 22.0),
                ),
                onPressed: () {
                  Navigator
                      .of(context)
                      .push(new CupertinoPageRoute(builder: (context) {
                    return CupertinoDemo();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
