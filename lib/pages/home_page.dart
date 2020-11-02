import 'package:app_food_delivery/core/consts.dart';
import 'package:app_food_delivery/core/flutter_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            _customAppBar(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Text("Build pageview"),
                  Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: "Hello,\n",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: "Shailee weedly",
                  style: TextStyle(
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.greenLightColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "search"),
                    ),
                  ),
                  Icon(
                    FlutterIcons.search,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Center(
              child: Icon(FlutterIcons.shop),
            ),
          )
        ],
      ),
    );
  }
}
