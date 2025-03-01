import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(DevicePreview(builder: (context)=>MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Container(
                height: 330,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120),

                  ),
                  border: Border(bottom: BorderSide.none),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon(Icons.arrow_back_ios_new,color: Colors.white,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white)),
                        // SizedBox(width: 180,),
                        Text("Curse",style: TextStyle(fontSize: 15,color: Colors.white,),),
                        // SizedBox(width: 200,),
                        // Icon(Icons.more_vert,color: Colors.white,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text(
                          "Spanish",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 280,),
                        CircularPercentIndicator(
                          progressBorderColor: Colors.white,
                          radius: 35.0,
                          lineWidth: 3.0,
                          percent: 0.43,
                          center: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              children: [
                                Text(
                                  "43%",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                                Text("Completed",style: TextStyle(fontSize: 10,color: Colors.white),)
                              ],
                            ),
                          ),
                          progressColor: Colors.white,
                          backgroundColor: Colors.white38,
                        ),
                      ],

                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 130,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Begginer",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.keyboard_arrow_down_outlined,color: Colors.orangeAccent,)
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // SizedBox(height: 10,),
                            Icon(Icons.diamond_rounded, color: Colors.pinkAccent, size: 20),
                            Icon(Icons.diamond, color: Colors.pinkAccent, size: 20),
                            SizedBox(width: 5),
                            Text("2 Milestones", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 220,left: 20,right: 20),
                    child: Container(
                      child: GridView.builder(
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1.2,
                        ),
                        itemBuilder: (context, index) {
                          List<String> titles = ["Basics", "Occupations", "Conversation", "Places", "Family members", "Foods"];
                          List<double> progressValues = [4 / 5, 1 / 5, 3 / 5, 1 / 5, 3 / 5, 2 / 5];
                          List<IconData> icons = [Icons.menu_book, Icons.business, Icons.chat, Icons.place, Icons.groups, Icons.restaurant];
                          List<Color>icon_colours=[Colors.orangeAccent,Colors.pinkAccent,Colors.blueAccent,Colors.green,Colors.purple,Colors.blue];

                          return Padding(
                            padding: const EdgeInsets.only(top:10,bottom:20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 5),
                                    // blurStyle: BlurStyle.outer,
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // color: Colors.grey,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(80)),
                                      boxShadow: [
                                        BoxShadow(
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black12,
                                          blurRadius: 10,
                                          spreadRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child:
                                    Icon(icons[index], size: 40, color: icon_colours[index],),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    titles[index],
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text("${(progressValues[index] * 5).toInt()}/5", style: TextStyle(fontSize: 12)),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0,right:15),
                                    child: LinearProgressIndicator(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      value: progressValues[index],
                                      backgroundColor: Colors.grey.shade300,
                                      valueColor: AlwaysStoppedAnimation<Color>(icon_colours[index]),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ),
        );
  }
}