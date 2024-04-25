import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';

int kinds = 0;
//هون بدنا نعالج القصة انو يستقبل الصورة من المستخدم ويعملها استدعاء للدالة ممن عندو
List<Widget> kindsInWareHouse = [
  warehouseCard('asset/images/juices.png', 'عصائر'),
  warehouseCard('asset/images/cans.png', 'معلبات'),
  warehouseCard('asset/images/nuts.png', 'موالح'),
  warehouseCard('asset/images/lengumes.png', 'بقوليات'),
  warehouseCard('asset/images/chipses.PNG', 'شيبس'),
];
Widget warehouseCard(String path, String text) {
  return Center(
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 109,
          margin: EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: cardColor,
            border: Border.all(color: Colors.black, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              path,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 108,
            ),
          ),
        ),
        Positioned(
          bottom: 14,
          left: 14, // تحديد الموضع من الأسفل
          width: 120,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 33,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class warehouseView extends StatelessWidget {
  const warehouseView({super.key});

  @override
  Widget build(BuildContext context) {
    kinds++;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 18, left: 40),
                              child: Text(
                                'المستودع',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontFamily: 'main'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 8, bottom: 18, right: 20),
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                  ),
                                  Center(
                                      child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 40,
                                    height: 30,
                                    child: Text(
                                      kindsInWareHouse.length.toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'main'),
                                    ),
                                  )),
                                  Center(
                                      child: Container(
                                    alignment: Alignment.centerRight,
                                    width: 80,
                                    height: 30,
                                    child: Text(
                                      ' عدد الأصناف  ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'main'),
                                    ),
                                  )),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ))),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: kindsInWareHouse.length,
                    itemBuilder: (context, index) {
                      return kindsInWareHouse[index];
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
