import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                children: [
                    _customAppBar(),
                ],
            ),
        );
    }

    Widget _customAppBar() {
        return Container(
            child: Row(children: [
                RichText(text: TextSpan(text: "Hello,\n", style: TextStyle(color: Colors.black),

                                children: [

                                ]),)
            ],),
        );
    }

}
