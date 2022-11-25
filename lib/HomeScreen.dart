import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List ceo = [
    "GOOGLE",
    "MICROSOFT",
    "FACEBOOK",
    "TWITTER",
    "RELIANCE",
    "TATA",
    "APPLE",
    "KOTAK",
    "ADANI",
    "ICC",
  ];
  List img = [
    "assets/image/sundar.png",
    "assets/image/satya.jpeg",
    "assets/image/mark.jpeg",
    "assets/image/elon.jpeg",
    "assets/image/mukesh.jpeg",
    "assets/image/natarajan.jpeg",
    "assets/image/tim.jpeg",
    "assets/image/uday.jpeg",
    "assets/image/gautam.jpeg",
    "assets/image/geoff.jpeg",
  ];

  List name = [
    "Pichai Sundararajan",
    "Satya Nadella",
    "Mark Zuckerberg",
    "ELON MUSK",
    "Mukesh D. Ambani",
    "Natarajan Chandrasekaran",
    "Tim Cook",
    "Uday Kotak",
    "Gautam Adani",
    "Geoff Allardice",
  ];
  List img2 = [
    "assets/image/sundar2.png",
    "assets/image/satya2.png",
    "assets/image/mark2.png",
    "assets/image/elon2.png",
    "assets/image/mukesh2.png",
    "assets/image/natarajan2.png",
    "assets/image/tim2.png",
    "assets/image/uday2.png",
    "assets/image/gautam2.png",
    "assets/image/geoff2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("TOP 10 CEO"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: ceo
                .asMap()
                .entries
                .map(
                  (e) => Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 100,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black,width: 3),
                          boxShadow: [
                            BoxShadow(color: Colors.black45, blurRadius: 15)
                          ]
                      ),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("${img[e.key]}",),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Container(
                        height: 80,
                        width: 330,
                        decoration:
                        BoxDecoration(
                            color: Colors.pink,
                            border: Border.all(color: Colors.black,width: 3),
                            boxShadow: [
                              BoxShadow(color: Colors.black45, blurRadius: 15)
                            ]),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "    ${ceo[e.key]} CEO",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        List imag = [img[e.key],ceo[e.key],name[e.key],img2[e.key],];
                        Navigator.pushNamed(context, 'Data',arguments: imag);
                      },
                      icon: Icon(Icons.arrow_forward,color: Colors.pink,))
                ],
              ),
            )
                .toList(),
          ),
        ),
      ),
    );
  }
}
