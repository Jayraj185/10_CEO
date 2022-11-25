import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {

  @override
  Widget build(BuildContext context) {
    dynamic ceo = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("${ceo[1]} : ${ceo[2]}"),
            centerTitle: true,
            backgroundColor: Colors.pink,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 765,
                  width: double.infinity,
                  color: Colors.black38,
                  alignment: Alignment.center,
                  child: Image.asset("${ceo[3]}"),
                )
              ],
            ),
          ),
        )
    );
  }
}