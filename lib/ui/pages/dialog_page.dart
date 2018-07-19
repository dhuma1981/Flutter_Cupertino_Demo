import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            "CupertinoButton, CupertinoAlertDialog, CupertinoDialogAction",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 16.0,
              ),
              CupertinoButton(
                child: Text("Open Dialog"),
                color: CupertinoColors.activeGreen,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text("Alert Dialog"),
                          content: new Text(
                              'This is the content of the Alert Dialog Box'),
                          actions: <Widget>[
                            new CupertinoDialogAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: new Text('Cancel'),
                            ),
                            new CupertinoDialogAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: new Text('Ok'),
                            ),
                          ],
                        );
                      });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
