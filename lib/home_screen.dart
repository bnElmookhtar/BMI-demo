import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text('BMI Calc'),
       centerTitle: true,
       backgroundColor: Color(0xff312f2f),
     ),
      body: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      buildSexContainer(icon: const Icon(Icons.male,size: 70.0,color: Colors.white,), txt: 'ذكر'),
                      const SizedBox(width: 20.0,),
                      buildSexContainer(icon: const Icon(Icons.female,size: 70.0,color: Colors.white,), txt: 'انثى'),
                    ],
                  ),
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: creatBoxDecoration(),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      creatText(txt: 'الطول', txtStyle: const TextStyle(fontSize: 30.0,color: Colors.white)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          creatText(txt: '180',txtStyle:  const TextStyle(fontSize: 40.0,color: Colors.white, fontWeight: FontWeight.bold,),),
                          creatText(txt: 'cm', txtStyle : const  TextStyle(color: Colors.white),),
                           ],
                      ),
                      Slider(
                          value: 120,
                          max: 220,
                          min: 80,
                          onChanged: (value){setState(() {
                            value = value;
                            //print(value.round());
                          });},
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
                padding: const EdgeInsets.all(20.0),
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
                              creatText(txt: 'الوزن', txtStyle:const  TextStyle(fontSize: 30.0,color: Colors.white,),),
                              creatText(txt: '180', txtStyle: const TextStyle(fontSize: 40.0,color: Colors.white,fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    creatFloatingButton(onPressed: (){}, icon:const Icon (Icons.remove_circle_outline,),),
                                    const SizedBox(width: 20.0,),
                                    creatFloatingButton(onPressed: (){}, icon:const Icon (Icons.add_circle_outline,),),
                                  ],
                                ),

                            ],
                          ),


                        ),
                      ),
                      const SizedBox(width: 20.0,),
                      Expanded(
                        child: Container(
                          decoration: creatBoxDecoration(),
                          child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                creatText(txt: 'العمر', txtStyle:const  TextStyle(fontSize: 30.0,color: Colors.white),),
                                creatText(txt: '25', txtStyle: const TextStyle(fontSize: 40.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      creatFloatingButton(onPressed: (){}, icon:const Icon(
                                  Icons.remove_circle_outline,
                                ), ),
                                      const SizedBox(width: 20.0,),
                                      creatFloatingButton(onPressed: (){}, icon: const Icon(
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
              padding: EdgeInsetsDirectional.only(start: 80.0,end:80.0,bottom: 10.0),
              child: Container(
                  decoration: creatBoxDecoration(),
                  child: MaterialButton(onPressed: () {  },
                    color: Colors.black12,
                    minWidth: double.infinity,
                    height: 70.0,
                    textColor: Colors.white,
                    child: const Text('calculate'),
                  ),
              ),
            ),
          ],
        ),

    );
  }
  Widget buildSexContainer({required Icon icon,required String txt})=>  Expanded(
        child: Container(
          decoration:creatBoxDecoration(),
          child: Column(
            children: [
              icon,
              const SizedBox(height: 15,),
              Text(
                txt,
                style: const TextStyle(
                    fontSize: 30.0,
                color: Colors.white,
                ),
              ),
            ],
          ),
      ),

  );
  BoxDecoration creatBoxDecoration()=>BoxDecoration(
  borderRadius: BorderRadius.circular(10.0),
  color: Color(0xff312f2f),
  );
  Text creatText({required String txt, required TextStyle txtStyle})=>Text(
    txt,
    style: txtStyle,
  );
  FloatingActionButton  creatFloatingButton({required onPressed,required Icon icon})=>FloatingActionButton(
    onPressed: onPressed(),
    mini: true,
    child: icon,
  );
}

