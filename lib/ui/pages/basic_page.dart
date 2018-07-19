import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  var switchValue = true;
  var sliderValue = 30.0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Center(),
          Text(
            "CupertinoSwitch, CupertinoSlider & CupertinoActivityIndicator",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Animate Activity Indicator"),
              CupertinoSwitch(
                value: switchValue,
                onChanged: (changedValue) {
                  setState(() {
                    switchValue = changedValue;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Activity Indicator Size"),
              CupertinoSlider(
                value: sliderValue,
                onChanged: (changedValue) {
                  setState(() {
                    sliderValue = changedValue;
                  });
                },
                min: 10.0,
                max: 80.0,
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          CupertinoActivityIndicator(
            animating: switchValue,
            radius: sliderValue,
          ),
        ],
      ),
    ));
  }
}
