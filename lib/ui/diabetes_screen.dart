import 'package:flutter/material.dart';
import 'package:pharmacy_app_ui/utils/routes/routes_names.dart';

class DiabetesScreen extends StatefulWidget {
  const DiabetesScreen({super.key});

  @override
  State<DiabetesScreen> createState() => _DiabetesScreenState();
}

class _DiabetesScreenState extends State<DiabetesScreen> {
  var dietIndex = 0;

  final List dietPic =  [
    'assets/images/diabetes_screen/img_1.png',
    'assets/images/diabetes_screen/img_2.png',
    'assets/images/diabetes_screen/img_3.png',
    'assets/images/diabetes_screen/img_1.png',
    'assets/images/diabetes_screen/img_2.png',
  ];

  final List dietText =  [
    'Sugar \nSubstitute',
    'Juices & \nVinegars',
        'Vitamins \nMedicines',
        'Sugar \nSubstitute',
    'Juices & \nVinegars',
  ];

  final List gridText =  [
    'Accu-check Active \nTest Strip',
    'Omron HEM-8712 \nBP Monitor',
    'Accu-check Active \nTest Strip',
    'Omron HEM-8712 \nBP Monitor',
    'Accu-check Active \nTest Strip',
    'Omron HEM-8712 \nBP Monitor',

  ];
  final List gridPic =  [
    'assets/images/diabetes_screen/img_4.png',
    'assets/images/diabetes_screen/img_6.png',
    'assets/images/diabetes_screen/img_7.png',
    'assets/images/diabetes_screen/img_8.png',
    'assets/images/diabetes_screen/img_4.png',
    'assets/images/diabetes_screen/img_6.png',
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diabetes Care',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, RoutesName.itemdetailScreen);
                 },
                 child: Image.asset('assets/images/diabetes_screen/img.png')),
           ),
           Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Diabetic Diet',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff090F47)),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dietText.length,
                itemBuilder: (BuildContext context, int dietIndex){

                  return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 162,
                        width: 110,
                        child: Column(
                          children: [
                            Container(
                              height: 99,
                              width: 109,
                              child: Image.asset(dietPic[dietIndex]),
                            ),
                            SizedBox(height: 8,),
                            Text(dietText[dietIndex]),
                          ],
                        ),
                      ),
                  );

                }),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'All Products',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff090F47)),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20, // number of items in the grid
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of grid columns
                  mainAxisSpacing: 10.0, // spacing between rows
                  crossAxisSpacing: 10.0, // spacing between columns
                ),
                itemBuilder: (BuildContext context, int index) {
                  return  Material(
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 157,
                        height: 300,
                        child: Column(
                          children: [
                            Image.asset('assets/images/diabetes_screen/img_4.png',height: 90,),
                            Text('Accu-check Active \nTest Strip'),
                            Row(
                              children: [
                                SizedBox(width: 17,),
                                Text('\$112',
                                  style: TextStyle(
                                    color: Color(0xff090F47),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 50,),
                                Image(
                                    height: 40,
                                    width: 40,
                                    image: AssetImage(
                                        'assets/images/diabetes_screen/img_5.png'))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              
            ),
          ),



        ],
      ),
    );
  }
}
