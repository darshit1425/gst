import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String OR = '';
  double gst = 0;
  double FP = 0;
  double Price = 0;
  double i = 0;

  List color = [

    Color(0xffFFFFFF),
    Color(0xffFFFFFF),
    Color(0xffFFFFFF),
    Color(0xffFFFFFF),
    Color(0xffFFFFFF),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ORIGINAL PRICE", style: TextStyle(fontSize: 15)),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("$OR Rs.",
                                    style: TextStyle(fontSize: 15)))),
                      ],
                    ),
                  ),
                ),
                Center(
                    child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("GST", style: TextStyle(fontSize: 20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  color[0] = Colors.orange;
                                  color[1] = Colors.brown;
                                  color[2] = Color(0xffEEEEEE);
                                  color[3] = Color(0xffEEEEEE);
                                  color[4] = Color(0xffEEEEEE);
                                  gst = double.parse(OR);
                                  FP = (3 * gst) / 100;
                                  Price = FP;
                                  FP = FP + gst;
                                });
                              },
                              child: Box("3", color[0])),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  color[1] = Colors.orange;
                                  color[0] = Color(0xffEEEEEE);
                                  color[2] = Color(0xffEEEEEE);
                                  color[3] = Color(0xffEEEEEE);
                                  color[4] = Color(0xffEEEEEE);
                                  gst = double.parse(OR);
                                  FP = (5 * gst) / 100;
                                  Price = FP;
                                  FP = FP + gst;
                                });
                              },
                              child: Box("5", color[1])),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  color[2] = Colors.orange;
                                  color[1] = Color(0xffEEEEEE);
                                  color[0] = Color(0xffEEEEEE);
                                  color[3] = Color(0xffEEEEEE);
                                  color[4] = Color(0xffEEEEEE);
                                  gst = double.parse(OR);
                                  FP = (12 * gst) / 100;
                                  Price = FP;
                                  FP = FP + gst;
                                });
                              },
                              child: Box("12", color[2])),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  color[3] = Colors.orange;
                                  color[1] = Color(0xffEEEEEE);
                                  color[2] = Color(0xffEEEEEE);
                                  color[0] = Color(0xffEEEEEE);
                                  color[4] = Color(0xffEEEEEE);
                                  gst = double.parse(OR);
                                  FP = (18 * gst) / 100;
                                  Price = FP;
                                  FP = FP + gst;
                                });
                              },
                              child: Box("18", color[3])),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  color[4] = Colors.orange;
                                  color[1] = Color(0xffEEEEEE);
                                  color[2] = Color(0xffEEEEEE);
                                  color[3] = Color(0xffEEEEEE);
                                  color[0] = Color(0xffEEEEEE);
                                  gst = double.parse(OR);
                                  FP = (28 * gst) / 100;
                                  Price = FP;
                                  FP = FP + gst;
                                });
                              },
                              child: Box("28", color[4])),
                        ],
                      )
                    ],
                  ),
                )),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("FINAL PRICE", style: TextStyle(fontSize: 15)),
                        //SizedBox(width: 75,),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("$FP Rs.",
                                style: TextStyle(fontSize: 15))),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("CGST  :=   ${Price / 2}",
                          style: TextStyle(fontSize: 15)),
                      Text("SGST  :=   ${Price / 2}",
                          style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '7';
                                  });
                                },
                                child: Box2("7")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '8';
                                  });
                                },
                                child: Box2("8")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '9';
                                  });
                                },
                                child: Box2("9")),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '4';
                                  });
                                },
                                child: Box2("4")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '5';
                                  });
                                },
                                child: Box2("5")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '6';
                                  });
                                },
                                child: Box2("6")),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          OR = '';
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 175,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text("AC",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '1';
                                  });
                                },
                                child: Box2("1")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '2';
                                  });
                                },
                                child: Box2("2")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '3';
                                  });
                                },
                                child: Box2("3")),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '00';
                                  });
                                },
                                child: Box2("00")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '0';
                                  });
                                },
                                child: Box2("0")),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    OR = OR + '.';
                                  });
                                },
                                child: Box2(".")),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          OR = OR.substring(0, OR.length - 1);
                        });
                      },
                      child: Container(
                        width: 65,
                        height: 175,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(Icons.backspace_outlined,
                            color: Colors.white, size: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Box(String data, Color color2) {
    return Container(
      height: 30,
      width: 50,
      decoration:
          BoxDecoration(color: color2, borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: Text("$data%", style: TextStyle(fontSize: 18)),
    );
  }

  Widget Box2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        child: Text("$data", style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
