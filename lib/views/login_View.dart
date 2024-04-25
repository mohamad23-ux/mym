import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mym/maincolor.dart';
import 'package:mym/views/resetPassword_View.dart';
import 'package:mym/views/signin_View.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: maincolor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              color: maincolor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 175,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'أهــلاً بعودتك ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 49,
                            fontFamily: 'main'),
                      ),
                    ),
                  ],
                ),
              )),
          SingleChildScrollView(
            child: Container(
              height: 650,
              width: double.infinity,
              decoration: BoxDecoration(
                color:
                    Color.fromARGB(255, 255, 255, 255), // لون الخلفية للحاوية
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120), // نصف قطر الحد الأعلى الأيسر
                  topRight: Radius.circular(120), // نصف قطر الحد الأعلى الأيمن
                ),
                // إضافة الظل إذا أردت
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Icon(
                      Icons.login_sharp,
                      color: maincolor,
                      size: 33,
                    ),
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      style: TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: 'الاسم',
                        labelStyle: TextStyle(fontFamily: 'main'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: 350,
                    child: TextField(
                      style: TextStyle(fontFamily: 'main'),
                      textDirection: TextDirection
                          .rtl, // تحديد اتجاه النص من اليمين لليسار
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: maincolor)),
                        labelText: 'كلمة السر',
                        labelStyle: TextStyle(
                          fontFamily: 'main',
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(top: 12, right: 40),
                    child: Text(
                      'هل نسيت كلمة السر ؟ ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'main',
                          color: Color.fromRGBO(42, 35, 255, 1)),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 275,
                    height: 55,
                    margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(56, 31, 154, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => resetpasswordView(),
                              ));
                        },
                        child: Text(
                          'تسجــيـل دخــول',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'main',
                              fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signinview()),
                          );
                        },
                        child: Text('انشاء حساب ',
                            style: TextStyle(
                                fontFamily: 'main',
                                fontWeight: FontWeight.bold)),
                      ),
                      Text(
                        'لا تملك حساب ؟',
                        style: TextStyle(fontFamily: 'main'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
