import 'dart:math';

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../style/Colors.dart';
import 'package:share_plus/share_plus.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

bool isMale = false;
double valueHeight = 120.0;
int weight = 40;
int age = 20;
var result = weight / pow(valueHeight / 100, 2);
String message = ''' 
My age is ; $age 
I amm my Weight  : $weight
My Height : $valueHeight 
BIM : $result
''';

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BIM Calculator',
          style: TextStyle(
            fontFamily: 'TitleTextFont',
            fontWeight: FontWeight.w900,
            fontSize: 35,
            color: TextColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            color: isMale ? Colors.red : Colors.grey[400],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Center(
                              child: Text(
                                'Male',
                                style: TextStyle(
                                  fontFamily: 'MORFFont',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: TextColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            color: isMale ? Colors.grey[400] : Colors.red,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Center(
                              child: Text(
                                'Female',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: TextColor,
                                    fontFamily: 'MORFFont'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ContainerColor,
                          borderRadius: BorderRadius.circular(50)),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Title(
                                  color: TextColor,
                                  child: Text(
                                    'Height',
                                    style: TextStyle(
                                        fontFamily: 'titleAgeAndHeightFont',
                                        fontWeight: FontWeight.w800,
                                        color: TextColor,
                                        fontSize: 30),
                                  )),
                              SizedBox(
                                height: 40,
                              ),
                              SfSlider.vertical(
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.black45,
                                  max: 220.0,
                                  min: 80.0,
                                  interval: 30,
                                  value: valueHeight,
                                  onChanged: (value) {
                                    setState(() {
                                      valueHeight = value;
                                    });
                                  }),
                              SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 50),
                                child: Row(
                                  children: [
                                    Text(
                                      '${valueHeight.round()}',
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'CM',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 26.0,
                                color: TextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: TextColor,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: MaterialButton(
                  onPressed: () {
                    _settingModalBottomSheet(context);
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontFamily: 'TitleTextFont',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: BackGroundColor,
          height: 700,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Gender : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: TextColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'MORFFont'),
                      ),
                      Spacer(),
                      Text(
                        '${isMale ? 'Male' : 'Female'}',
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        ' Age : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: TextColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'MORFFont'),
                      ),
                      Spacer(),
                      Text(
                        '$age',
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        ' Weight : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: TextColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'MORFFont'),
                      ),
                      Spacer(),
                      Text(
                        '$weight',
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        ' Height : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: TextColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'MORFFont'),
                      ),
                      Spacer(),
                      Expanded(
                        child: Text(
                          '$valueHeight',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        ' BIM : ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: TextColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'MORFFont'),
                      ),
                      Spacer(),
                      Expanded(
                        child: Text(
                          '$result',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                                  color: Colors.red),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Center(
                                  child: Text(
                                    'Closed',
                                    style: TextStyle(
                                      fontFamily: 'MORFFont',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: TextColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Share.share(message);
                            },
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                  color: Colors.grey),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Center(
                                  child: Text(
                                    'Share',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: TextColor,
                                        fontFamily: 'MORFFont'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
