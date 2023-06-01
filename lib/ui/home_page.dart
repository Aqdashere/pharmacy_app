import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;

import '../utils/routes/routes_names.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var index = 0;
  var cardIndex= 0;
  var brandIndex = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.notifications,
    Icons.shopping_cart,
    Icons.person,
  ];
  final List itemlogo = [
    'assets/images/home_screen/img_4.png',
    'assets/images/home_screen/img_6.png',
    'assets/images/home_screen/img_8.png',
    'assets/images/home_screen/img_10.png',
    'assets/images/home_screen/img_12.png',
  ];
  final List itembackgroud = [
    'assets/images/home_screen/img_5.png',
    'assets/images/home_screen/img_7.png',
    'assets/images/home_screen/img_9.png',
    'assets/images/home_screen/img_11.png',
    'assets/images/home_screen/img_13.png',
  ];
  final List itemname = [
    'Dental',
    'Wellness',
    'Homeo',
    'Eye care',
    'Skin & Hair',
  ];
  List imageList = [
    {"id": 1, "image_path": 'assets/images/home_screen/img_14.png'},
    {"id": 2, "image_path": 'assets/images/home_screen/img_14.png'},
    {"id": 3, "image_path": 'assets/images/home_screen/img_14.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  final List cardBackground = [
    'assets/images/home_screen/img_17.png',
    'assets/images/home_screen/img_18.png',
    'assets/images/home_screen/img_17.png',
    'assets/images/home_screen/img_18.png',
  ];

  final List cardName = [
    '  Accu-check Active \n  Test Strip',
    '  Omron HEM-8712 \n  BP Monitor',
    '  Accu-check Active \n  Test Strip',
    '  Omron HEM-8712 \n  BP Monitor',
  ];

  final List cardPrice = [
    '  \$112',
    '  \$150',
    '  \$112',
    '  \$150',
  ];

  final List brandPics = [
    'assets/images/home_screen/img_20.png',
    'assets/images/home_screen/img_20.png',
    'assets/images/home_screen/img_20.png',
    'assets/images/home_screen/img_20.png',
    'assets/images/home_screen/img_20.png',
    'assets/images/home_screen/img_20.png',
  ];

  final List brandText = [
    'Himalaya \n Wellness',
    'Himalaya \n Wellness',
    'Himalaya \n Wellness',
    'Himalaya \n Wellness',
    'Himalaya \n Wellness',
    'Himalaya \n Wellness',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/home_screen/img.png'),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/home_screen/img_1.png',
                            height: 70,
                            width: 70,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, RoutesName.notificationScreen);
                                },
                                child: Image.asset(
                                  'assets/images/home_screen/img_2.png',
                                  height: 25,
                                  width: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, RoutesName.mycartScreen);
                                },
                                child: Image.asset(
                                  'assets/images/home_screen/img_3.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Hi, Ben',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Welcome to Medtech',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 25, left: 10, right: 10),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              filled: true,
                              hoverColor: Colors.white,
                              fillColor: Colors.white,
                              prefixIcon: const Icon(Icons.search),
                              hintText:
                              'Search Medicine & Healthcare products',
                              hintStyle: const TextStyle(fontSize: 13),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Top Categories',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff090F47)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemlogo.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                              height: 100,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(
                                    children: [
                                      Image(
                                          height: 50,
                                          image: AssetImage(itemlogo[index])),
                                      Positioned(
                                        left: 12,
                                        bottom: 15,
                                        child: Image(
                                            height: 25,
                                            width: 25,
                                            image: AssetImage(
                                                itembackgroud[index])),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Expanded(
                                    child: Text(
                                      itemname[index],
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style:
                                      const TextStyle(color: Color(0xff090F47), fontSize:11),
                                    ),
                                  ),
                                ],
                              )),
                        );
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    //For Carousal Slider
                    children: [
                      CarouselSlider(
                          items: imageList
                              .map(
                                (item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.fitWidth,
                              width: double.infinity,
                            ),
                          )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: true,
                              aspectRatio: 2,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              })),
                      Positioned(
                        //For Sliders 3 Dots
                          bottom: 25,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imageList.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () {
                                  carouselController.animateToPage(entry.key);
                                },
                                child: Container(
                                  width: currentIndex == entry.key ? 17 : 7,
                                  height: 7.0,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 3.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: currentIndex == entry.key
                                        ? Colors.red
                                        : Colors.teal,
                                  ),
                                ),
                              );
                            }).toList(),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Deals of the Day',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff090F47)),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cardName.length,
                        itemBuilder: (BuildContext context, int cardIndex) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: SizedBox(
                              height: 250,
                              width: 180,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 178,
                                    height: 154,
                                    child: Image(
                                        image: AssetImage(
                                            cardBackground[cardIndex])),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      cardName[cardIndex],
                                      style: const TextStyle(
                                        color: Color(0xff090F47),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          cardPrice[cardIndex],
                                          style: const TextStyle(
                                            color: Color(0xff090F47),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Image(
                                          height: 40,
                                          width: 40,
                                          image: AssetImage(
                                              'assets/images/home_screen/img_19.png')),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Featured Brands',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff090F47)),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: brandPics.length,
                      itemBuilder: (BuildContext context, int brandIndex) {
                        return SizedBox(
                          height: 126,
                          width: 80,
                          child: Column(
                            children: [
                              Image.asset(brandPics[brandIndex]),
                              Text(brandText[brandIndex]),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
