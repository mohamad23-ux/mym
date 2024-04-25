import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/sales_View.dart';
import 'package:mym/views/warehouse_View.dart';

// List<String> mainNames = [
//   'فواتير المبيعات',
//   'فواتير الشراء',
//   'سند الدفع',
//   'سند القبض',
// ];
//  Widget myText(String Text, int size, String fontfamily) {

// }

Widget newCard(String text) {
  return Container(
    width: double.infinity,
    height: 120,
    margin: EdgeInsets.only(bottom: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: cardColor,
      border: Border.all(color: Colors.black, width: 2),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5), // لون الظل الأسود
          spreadRadius: 2, // نصف قطر الانتشار
          blurRadius: 5, // نصف قطر التموج
          offset: Offset(0,
              3), // تغيير موقع الظل (الأول لليمين/اليسار، الثاني للأعلى/الأسفل)
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'main', fontSize: 20),
      ),
    ),
  );
}

DateTime now = DateTime.now();

List Foundation = [
  newCard('فواتير المبيع'),
  newCard('فواتير الشراء'),
  newCard('سند الدفع'),
  newCard('سند القبض'),
];
int total = 10000;

var todate = DateTime.now();

class mainview extends StatelessWidget {
  const mainview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Container(
                  width: double.infinity,
                  height: 120,
                  color: maincolor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // العنصر الأول (في اليسار)

                          // العنصر الثاني (في اليمين)
                          Container(
                            width: 100,
                            height: 40,
                            margin: EdgeInsets.only(top: 12),
                            child: Center(
                              child: Text(
                                ///////////////////////
                                ///////
                                ///// هون بدنانعالجلجو وضعو بالفرع صورة بدال نص
                                'M.Y.M',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'main',
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            margin: EdgeInsets.only(top: 12),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  'asset/images/profile.jpg',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 30,
                              child: Text(
                                total.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'main'),
                              ),
                            )),
                            Center(
                                child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 30,
                              child: Text(
                                ' صافي الربح ',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'main'),
                              ),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          width: 340,
                          height: 30,
                          color: Color.fromARGB(255, 167, 166, 166),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                now.year.toString() +
                                    "/" +
                                    now.month.toString() +
                                    "/" +
                                    now.day.toString(),
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'main'),
                              ),
                              Text(
                                todate.hour.toString(),
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'main'),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: 380,
                        height: 580,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              child: Foundation[0],
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => salesView()));
                              },
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Foundation[1],
                            SizedBox(
                              height: 14,
                            ),
                            Foundation[2],
                            SizedBox(
                              height: 14,
                            ),
                            Foundation[3],
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => warehouseView()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    margin: EdgeInsets.only(top: 12),
                    color: maincolor,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'المستودع',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'main',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
