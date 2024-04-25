import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';

class buyView extends StatelessWidget {
  const buyView({super.key});

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
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => ));
                              },
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: 40,
                                  height: 30,
                                  child: Icon(
                                    Icons.pending_actions_rounded,
                                    color: Colors.white,
                                  )),
                            )),
                            SizedBox(
                              width: 25,
                            ),
                            Center(
                                child: Container(
                              alignment: Alignment.centerRight,
                              width: 80,
                              height: 30,
                              child: Text(
                                ' تاريخ اليوم  ',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'main'),
                              ),
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 275,
                    height: 55,
                    margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(189, 123, 15, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ))),
    ])));
  }
}
