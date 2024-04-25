import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';

DateTime now = DateTime.now();

Widget SalesCard(String text, int count, int price) {
  int finalprice = count * price;
  return Container(
    width: 150,
    height: 150,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: maincolor,
      borderRadius: BorderRadius.circular(10), // Set the desired radius value
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  count.toString(),
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
                Text(
                  'الكميه',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
              ],
            )),
        Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  finalprice.toString(),
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
                Text(
                  'السعر',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
              ],
            ))
      ],
    ),
  );
}

class salesView extends StatelessWidget {
  const salesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
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
                        margin: EdgeInsets.only(top: 10, bottom: 18, left: 40),
                        child: Text(
                          'فاتورة المبيع ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'main'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8, bottom: 18, right: 20),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {},
                                child: Expanded(
                                  child: Container(
                                      alignment: Alignment.centerLeft,
                                      width: 40,
                                      height: 30,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.pending_actions_rounded),
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Center(
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    width: 80,
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          now.year.toString() +
                                              "/" +
                                              now.month.toString() +
                                              "/" +
                                              now.day.toString(),
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontFamily: 'main'),
                                        ),
                                      ],
                                    ))),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ))),
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(25),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.65,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              specialCard('اضافة', 2, 11),
              SalesCard('Sinalco', 15, 4500),
              SalesCard('اندومي ', 1, 3500),
              SalesCard('مرتديلا', 2, 14000),
              SalesCard('pepsi', 2, 12500),
              SalesCard('طرابيش', 1, 10000),
              SalesCard('Neom', 2, 12500),
              SalesCard('Barakat', 2, 5000),
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 247, 247, 247),
          child: ListView(
            children: [
              Column(
                children: [
                  InkWell(
                    child: Text(
                      'هل ترغب بتوصيل الطلبية ؟ ',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 25, 64, 97)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ])));
  }
}

Widget specialCard(String text, int count, int price) {
  int finalprice = count * price;
  return Container(
    width: 150,
    height: 150,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: maincolor,
      borderRadius: BorderRadius.circular(10), // Set the desired radius value
    ),
    child: Column(
      children: [
        Container(
            margin: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(6),
                  child: Text(
                    'اضافة منتج',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(11),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: const Color.fromARGB(0, 255, 255, 255),
                      border: Border.all(
                          width: 1.2,
                          color: const Color.fromARGB(255, 255, 255, 255))),
                )
              ],
            )),
      ],
    ),
  );
}



// showDialog(
//                                               context: context,
//                                               builder: (context) => AlertDialog(
//                                                     actions: [
//                                                       ListView(
//                                                         scrollDirection:
//                                                             Axis.vertical,
//                                                         children: [
//                                                           Container(
//                                                             width: MediaQuery.of(
//                                                                         context)
//                                                                     .size
//                                                                     .height *
//                                                                 0.65,
//                                                             height: MediaQuery.of(
//                                                                         context)
//                                                                     .size
//                                                                     .height *
//                                                                 0.72,
//                                                             child: TextFile(
//                                                                 'اسم الزبون '),
//                                                           )
//                                                         ],
//                                                       )
//                                                     ],
//                                                   ));