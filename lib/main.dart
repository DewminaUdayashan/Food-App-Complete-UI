import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/FoodDetail.dart';

void main() => runApp(
  DevicePreview(
    enabled: kReleaseMode,
    builder: (context) => MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List img = [
    'assets/img/3.png',
    'assets/img/2.png',
    'assets/img/1.png',
  ];

  List names = [
    'Sandwich',
    'Sausages  Bun',
    'Family Pack',
  ];

  String details =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height * 0.3,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40),),),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 30,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Food Diary',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Nunito',
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(100),
                      elevation: 8,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          hintText: 'Search',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          suffixIcon: Material(
                              borderRadius: BorderRadius.circular(100),
                              elevation: 8,
                              child: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.32,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.stars)
                    ],
                  ),
                ),
                Container(
                  height: height * 0.4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FoodItemCard(
                        name: names[index],
                        description: details,
                        imgPath: img[index],
                      );
                    },
                  ),
                ),
                SizedBox(height: 4,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        'Offers',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.local_offer),

                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: height*0.4,
                      width: width,
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.transparent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60,),
                          Text('Family Pack',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 25,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(3.0, 2.0),
                                blurRadius: 3.0,
                                color: Colors.grey,
                              )
                            ]
                          ),
                          ),
                          Text('1500LKR',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 25,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(3.0, 2.0),
                                    blurRadius: 3.0,
                                    color: Colors.grey,
                                  )
                                ]
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: height*0.2,
                        width: width,
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red.withOpacity(0.9),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 89,
                      left: 110,
                      right: 0,
                      child: Opacity(
                        opacity: 0.3,
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/img/1.png', color: Colors.black,),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 85,
                      left: 100,
                      right: 0,
                      child: Container(
                          height: 200,
                          width: 200,
                          child: Image.asset('assets/img/1.png',),),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: width*0.2,
                            child: Text('Buy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Nunito',
                            ),
                            ),
                          ),
                          Container(
                            width: width*0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text('Add to Cart',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FoodItemCard extends StatefulWidget {
  final String name;
  final String description;
  final String imgPath;

  const FoodItemCard({Key key, this.name, this.description, this.imgPath})
      : super(key: key);

  @override
  _FoodItemCardState createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodDetails(
          name: widget.name,
          image: widget.imgPath,
          description : widget.description,
        ),),),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 8,
          child: Container(
            height: height * 0.2,
            width: width * 0.5,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  left: 165,
                  top: 0,
                  child: Container(
                    height: 40,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(15))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 20,
                  right: 10,
                  child: Hero(
                    tag: 'shadow${widget.imgPath}',
                    child: Image.asset(
                      widget.imgPath,
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('150LKR'),
                      SizedBox(
                        height: 15,
                      ),
                      Hero(
                        tag: 'image${widget.imgPath}',
                        child: Image.asset(
                          widget.imgPath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Icon(Icons.subdirectory_arrow_left),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
