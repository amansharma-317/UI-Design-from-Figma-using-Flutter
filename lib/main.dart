import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return MaterialApp(
        title: "screen 2",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );

    });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.pink,
                          Colors.pink.shade200,
                        ],
                      )
                    ),
                      padding: EdgeInsets.all(5),
                      child: Image.asset("assets/images/icons8-news.png"),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset("assets/images/Markets.png"),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset("assets/images/Portfolio.png"),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset("assets/images/Profile.png"),
                  ),
                  label: 'Home',
                ),
              ],
            ),
          ),
          resizeToAvoidBottomInset: false,
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset("assets/images/image1.jpg", fit: BoxFit.fill),
                          Image.asset("assets/images/rectangle.png", fit: BoxFit.fill),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Text('Will China invade Taiwan before end September?',style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w500)),
                                    ),
                                    Expanded(

                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Image.asset("assets/images/filter1.png"),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 15,
                            right: 15,
                            child: Container(
                              child: Image.asset("assets/images/arrow-redo.png"),
                            ),
                          )

                        ],
                      ),
                    ),

                    //this container represents the second part of the design
                    Container(
                      padding: EdgeInsets.all(10),
                      width: constraints.maxHeight,
                      height: 75,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/flying_coins.png'),
                        ),
                        borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(25), bottomEnd: Radius.circular(12)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue.shade900,
                            Colors.pink,
                          ],
                        ),
                      ),


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 5),
                              Text('CHANCE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                              SizedBox(height: 2),
                              Text('11%', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 20),
                              Image.asset('assets/images/image-2.png'),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 20),
                              Text('24H', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500)),
                              SizedBox(height: 5),
                              Text('+25495', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 6),
                              Text('\$09', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                              Container(
                                padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                                child: Text('Yes', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.greenAccent,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: 6),
                              Text('\$89', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                              Container(
                                padding: EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Text('No', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.pinkAccent,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    //this section represents the third and final part of the design
                    Container(
                      width: constraints.maxHeight,
                      height: 60,
                      child: TabBar(
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.pink,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.pink,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                            Container(
                              width: width*0.4,
                              child: Tab(
                                child: Text('Research & News', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                              ),
                            ),
                          Container(
                            child: Tab(
                              child: Text('Reactions', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                            ),
                          ),
                          Container(
                            child: Tab(
                              child: Text('Related', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //tab-bar-views
                    Container(
                      width: width,
                      height: 275,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          //tab-1
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('215 Expert Opinion', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600])),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(60),
                                          border: Border.all(
                                            color: Colors.pink.shade50,
                                            width: 8,
                                          ),
                                          color: Colors.pink.shade100,
                                        ),
                                        child: Text('12%', style: TextStyle(fontSize: 18, color: Colors.pink.shade700, fontWeight: FontWeight.bold)),
                                      ),
                                    ),

                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                child: LinearProgressIndicator(
                                                  value: 0.12,
                                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.pink),
                                                  backgroundColor: Colors.grey.shade300,
                                                  minHeight: 6,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Container(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                child: LinearProgressIndicator(
                                                  value: 0.88,
                                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
                                                  backgroundColor: Colors.grey.shade300,
                                                  minHeight: 6,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Container(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                child: LinearProgressIndicator(
                                                  value: 0.02,
                                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
                                                  backgroundColor: Colors.grey.shade300,
                                                  minHeight: 6,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 20, right: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('12% Buy Yes', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Colors.pink)),
                                            SizedBox(height: 10),
                                            Text('88% Buy No', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                                            SizedBox(height: 10),
                                            Text('1% No Resolve', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Expanded(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(),
                                        width: width*0.5,
                                        child: Card(
                                          elevation: 2,
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Thehill', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                                                    Text('1 Sept', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'must explain to you how all touncing pleasure dislikes, or avoids plea',
                                                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(),
                                        width: width*0.5,
                                        child: Card(
                                          elevation: 2,
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Thehill', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                                                    Text('1 Sept', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'must explain to you how all touncing pleasure dislikes, or avoids plea',
                                                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),


                          // tab-2
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context){
                                    return Expanded(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                Text('Reactions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                                                Spacer(),
                                                Icon(Icons.close),
                                              ],
                                            ),
                                          ),
                                          //top-newest-row
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Text('Top', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.black,
                                                  ),
                                                  width: 60,
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(5),
                                                ),
                                                SizedBox(width: 10),
                                                Container(
                                                  child: Text('Newest', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Colors.grey.shade700,
                                                  ),
                                                  width: 100,
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(5),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade200,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(text: 'Remember to keep comments respectful and to follow our', style: TextStyle(color: Colors.black)),
                                                  TextSpan(text: ' Community Guidelines', style: TextStyle(color: Colors.lightBlue)),
                                                ],
                                              )
                                            ),
                                          ),

                                          //last-section-before-the-list
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage('assets/images/round.png'),
                                                ),
                                                SizedBox(width: 15),
                                                Text('Add comment...', style: TextStyle(fontWeight: FontWeight.w300)),
                                                Spacer(),
                                                Image.asset('assets/images/emoji3.png'),
                                              ],
                                            ),
                                          ),
                                          //here we start building the ListView of the Comments.
                                          Expanded(
                                            child: ListView(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      CircleAvatar(
                                                        backgroundColor: Colors.pink,
                                                        radius: 17,
                                                        child: CircleAvatar(
                                                          backgroundColor: Colors.white,
                                                          radius: 16,
                                                          child: CircleAvatar(
                                                            backgroundImage: AssetImage('assets/images/avatar1.png'),
                                                          )
                                                        ),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text('Prof.alison 1h ago', style: TextStyle(fontWeight: FontWeight.bold)),
                                                            Text('asdds afsdsf asdsadsassds dsaasdafsfdsdfs sd sasdss thh yjy ytyytyytj yttyytjy yjtyty yjtjyjyyj jt yjjy j ytjy yt yt jy jtyjyjy t yt ty j'),
                                                            SizedBox(height: 5),
                                                            Row(
                                                              children: [
                                                                Image.asset('assets/images/Like.png'),
                                                                SizedBox(width: 5),
                                                                Image.asset('assets/images/Dislike.png'),
                                                                SizedBox(width: 5),
                                                                Image.asset('assets/images/Like 3.png'),
                                                              ],
                                                            ),
                                                            SizedBox(height: 5),
                                                            Text('5 Replies', style: TextStyle(color: Colors.lightBlue)),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor: Colors.pink,
                                                          radius: 17,
                                                          child: CircleAvatar(
                                                              backgroundColor: Colors.white,
                                                              radius: 16,
                                                              child: CircleAvatar(
                                                                backgroundImage: AssetImage('assets/images/avatar2.png'),
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('TomBN 3h ago', style: TextStyle(fontWeight: FontWeight.bold)),
                                                              Text('asdds afsdsf asdsadsassds dsaasdafsfdsdfs sd sasdss thh yjy ytyytyytj yttyytjy yjtyty yjtjyjyyj jt yjjy j ytjy yt yt jy jtyjyjy t yt ty j'),
                                                              SizedBox(height: 5),
                                                              Row(
                                                                children: [
                                                                  Image.asset('assets/images/Like.png'),
                                                                  SizedBox(width: 5),
                                                                  Image.asset('assets/images/Dislike.png'),
                                                                  SizedBox(width: 5),
                                                                  Image.asset('assets/images/Like 3.png'),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5),
                                                              Text('1 Replies', style: TextStyle(color: Colors.lightBlue)),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor: Colors.pink,
                                                          radius: 17,
                                                          child: CircleAvatar(
                                                              backgroundColor: Colors.white,
                                                              radius: 16,
                                                              child: CircleAvatar(
                                                                backgroundImage: AssetImage('assets/images/avatar1.png'),
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Pik 9h ago', style: TextStyle(fontWeight: FontWeight.bold)),
                                                              Text('asdds afsdsf asdsadsassds dsaasdafsfdsdfs sd sasdss thh yjy ytyytyytj yttyytjy yjtyty yjtjyjyyj jt yjjy j ytjy yt yt jy jtyjyjy t yt ty j'),
                                                              SizedBox(height: 5),
                                                              Row(
                                                                children: [
                                                                  Image.asset('assets/images/Like.png'),
                                                                  SizedBox(width: 5),
                                                                  Image.asset('assets/images/Dislike.png'),
                                                                  SizedBox(width: 5),
                                                                  Image.asset('assets/images/Like 3.png'),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5),
                                                              Text('1 Replies', style: TextStyle(color: Colors.lightBlue)),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor: Colors.pink,
                                                          radius: 17,
                                                          child: CircleAvatar(
                                                              backgroundColor: Colors.white,
                                                              radius: 16,
                                                              child: CircleAvatar(
                                                                backgroundImage: AssetImage('assets/images/avatar2.png'),
                                                              )
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('Pik 9h ago', style: TextStyle(fontWeight: FontWeight.bold)),
                                                              Text('asdds afsdsf asdsadsassds dsaasdafsfdsdfs sd sasdss thh yjy ytyytyytj yttyytjy yjtyty yjtjyjyyj jt yjjy j ytjy yt yt jy jtyjyjy t yt ty j'),
                                                              SizedBox(height: 5),
                                                              Row(
                                                                children: [
                                                                  Image.asset('assets/images/Like.png'),
                                                                  SizedBox(width: 5),
                                                                  Image.asset('assets/images/Dislike.png'),
                                                                  SizedBox(width: 5),
                                                                  Image.asset('assets/images/Like 3.png'),
                                                                ],
                                                              ),
                                                              SizedBox(height: 5),
                                                              Text('1 Replies', style: TextStyle(color: Colors.lightBlue)),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Column(
                                children: [
                                  // the main row
                                  Row(
                                    children: [
                                      Icon(Icons.assignment_ind_outlined),
                                      SizedBox(width: 5),
                                      Text('215', style: TextStyle(fontSize: 17.50)),
                                      SizedBox(width: 30),
                                      Image.asset('assets/images/commentstrokeicon.png'),
                                      SizedBox(width:5),
                                      Text('95K', style: TextStyle(fontSize: 17.50)),
                                      SizedBox(width: 20),
                                      Spacer(),
                                      Image.asset('assets/images/arrowdial.png', fit: BoxFit.contain),
                                      SizedBox(width: 20),
                                    ],
                                  ),

                                  SizedBox(height: 20),
                                  //the two comments will be added here
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.pink,
                                        radius: 22,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius:20,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage('assets/images/avatar1.png'),
                                            radius: 18,
                                          )
                                        )
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(fontSize: 12),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Linda', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                                              TextSpan(text: ' If China does indeed attack Taiwan soon, October is the like time since the...', style: TextStyle(color: Colors.black)),
                                              TextSpan(text: 'more', style: TextStyle(fontWeight: FontWeight.w100,color: Colors.black)),
                                            ]
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  //the two comments will be added here
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.pink,
                                          radius: 22,
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius:20,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage('assets/images/avatar2.png'),
                                                radius: 18,
                                              )
                                          )
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(fontSize: 12),
                                              children: <TextSpan>[
                                                TextSpan(text: 'TomBN', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                                                TextSpan(text: ' I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of...', style: TextStyle(color: Colors.black)),
                                                TextSpan(text: 'more', style: TextStyle(fontWeight: FontWeight.w100,color: Colors.black)),
                                              ]
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),

                                  //here we are adding the last row for this tab, which is the Add comment... along with the two emojis and the + icon/symbol
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 22,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Add Comment...', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w100)),
                                      Spacer(),
                                      Image.asset('assets/images/emoji1.png', fit: BoxFit.scaleDown),
                                      SizedBox(width: 10),
                                      Image.asset('assets/images/emoji2.png', fit: BoxFit.scaleDown),
                                      SizedBox(width: 10),
                                      Image.asset('assets/images/emoji3.png', fit: BoxFit.scaleDown),
                                      SizedBox(width: 10),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),


                          //tab-3
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context){
                                  return Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              Text('Related', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                                            ],
                                          ),
                                        ),
                                        //top-newest-row
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Text('Top', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.black,
                                                ),
                                                width: 60,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(5),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                child: Text('Newest', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.grey.shade700,
                                                ),
                                                width: 100,
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(5),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //here we start building the ListView of the News.
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: ListView(
                                              children: [
                                                SizedBox(height: 10),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey.shade200),
                                                  ),
                                                  child: ListTile(
                                                    contentPadding: EdgeInsets.all(0),
                                                    leading: ClipRRect(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                                      child: Image.asset('assets/images/liz1.jfif'),
                                                    ),
                                                    title: Text('Liz Truss will be UKs next Prime Minister?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                ),

                                                SizedBox(height: 10),

                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey.shade200),
                                                  ),
                                                  child: ListTile(
                                                    contentPadding: EdgeInsets.all(0),
                                                    leading: ClipRRect(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                                      child: Image.asset('assets/images/pound1.jfif'),
                                                    ),
                                                    title: Text('British Pound will fall after Prime Minister elections?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                ),
                                                SizedBox(height: 10),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey.shade200),
                                                  ),
                                                  child: ListTile(
                                                    contentPadding: EdgeInsets.all(0),
                                                    leading: ClipRRect(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                                      child: Image.asset('assets/images/liz1.jfif'),
                                                    ),
                                                    title: Text('Liz Truss will be UKs next Prime Minister?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                ),

                                                SizedBox(height: 10),

                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey.shade200),
                                                  ),
                                                  child: ListTile(
                                                    contentPadding: EdgeInsets.all(0),
                                                    leading: ClipRRect(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                                      child: Image.asset('assets/images/pound1.jfif'),
                                                    ),
                                                    title: Text('British Pound will fall after Prime Minister elections?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                ),
                                                SizedBox(height: 10),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey.shade200),
                                                  ),
                                                  child: ListTile(
                                                    contentPadding: EdgeInsets.all(0),
                                                    leading: ClipRRect(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                                      child: Image.asset('assets/images/liz1.jfif'),
                                                    ),
                                                    title: Text('Liz Truss will be UKs next Prime Minister?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                ),

                                                SizedBox(height: 10),

                                                Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey.shade200),
                                                  ),
                                                  child: ListTile(
                                                    contentPadding: EdgeInsets.all(0),
                                                    leading: ClipRRect(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                                      child: Image.asset('assets/images/pound1.jfif'),
                                                    ),
                                                    title: Text('British Pound will fall after Prime Minister elections?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                                  ),
                                                  padding: EdgeInsets.all(0),
                                                ),
                                              ],
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ListView(
                                children: [

                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade200),
                                    ),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      leading: ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                        child: Image.asset('assets/images/liz1.jfif'),
                                      ),
                                      title: Text('Liz Truss will be UKs next Prime Minister?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                    ),
                                    padding: EdgeInsets.all(0),
                                  ),

                                  SizedBox(height: 10),

                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade200),
                                    ),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      leading: ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                        child: Image.asset('assets/images/pound1.jfif'),
                                      ),
                                      title: Text('British Pound will fall after Prime Minister elections?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)) ,
                                    ),
                                    padding: EdgeInsets.all(0),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('more...', style: TextStyle(color: Colors.lightBlue)),
                                    ],
                                  )
                                ],
                              )
                            ),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              );
            },
          ),
        ),
    );
  }
}
