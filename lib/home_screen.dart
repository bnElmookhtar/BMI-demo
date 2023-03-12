import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double heightSlider = 120.0;
  int weight = 20 ;
  int age = 5;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Color(0xff312f2f),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ?Colors.blue: Color(0xff312f2f) ,
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.male, size: 70.0, color: Colors.white,),
                            SizedBox(height: 15,),
                            Text('ذكر', style: TextStyle(fontSize: 30.0, color: Colors.white,),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale ?  Colors.blue: Color(0xff312f2f),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 70.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'انثى',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: creatBoxDecoration(),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    creatText(
                        txt: 'الطول',
                        txtStyle:
                            TextStyle(fontSize: 30.0, color: Colors.white)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        creatText(
                          txt: '${heightSlider.round()}',
                          txtStyle: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        creatText(
                          txt: 'cm',
                          txtStyle: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      value: heightSlider,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value) {
                        setState(() {
                         heightSlider = value;
                          //print(value.round());
                        });
                      },
                      activeColor: Colors.white,
                      inactiveColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: creatBoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            creatText(
                              txt: 'الوزن',
                              txtStyle: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            creatText(
                              txt: '$weight',
                              txtStyle: TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if(weight>10)
                                        weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove_circle_outline,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                FloatingActionButton(
                                  onPressed: () {

                                    setState(() {
                                      if(weight<200)
                                        weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add_circle_outline,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: creatBoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            creatText(
                              txt: 'العمر',
                              txtStyle: TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                            creatText(
                              txt: '$age',
                              txtStyle: TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {

                                    setState(() {
                                      if(age>5)
                                        age--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove_circle_outline,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                FloatingActionButton(
                                  onPressed: () {

                                    setState(() {
                                      if(age<100)
                                        age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add_circle_outline,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: 80.0, end: 80.0, bottom: 10.0),
            child: Container(
              decoration: creatBoxDecoration(),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.black12,
                minWidth: double.infinity,
                height: 70.0,
                textColor: Colors.white,
                child: Text('calculate'),
              ),
            ),
          ),
        ],
      ),
    );
  }
  BoxDecoration creatBoxDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff312f2f),
      );
  Text creatText({required String txt, required TextStyle txtStyle}) => Text(
        txt,
        style: txtStyle,
      );
}
