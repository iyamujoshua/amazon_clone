import 'package:amazon_clone/constant/common_function.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class authscreen extends StatefulWidget {
  const authscreen({super.key});

  @override
  State<authscreen> createState() => _authscreenState();
}

class _authscreenState extends State<authscreen> {
  bool inLogin = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    String currentCountryCode = '+234';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image(
          image: AssetImage(
            "asset/amazon_prev_ui.png",
          ),
          height: height * 0.04,
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: SafeArea(
        child: Container(
          height: height,
          width: Width,
          padding: EdgeInsets.symmetric(
            horizontal: Width * 0.03,
            vertical: height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Commonfunctin.blankSpace(height * 0.02, 0),
              Container(
                width: Width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.grey.shade300)),
                child: Column(children: [
                  Container(
                    height: height * 0.06,
                    width: Width,
                    padding: EdgeInsets.symmetric(horizontal: Width * 0.03),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              inLogin = false;
                            });
                          },
                          child: Container(
                            height: height * 0.03,
                            width: height * 0.03,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                ),
                                color: Colors.white),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.circle,
                              size: height * 0.02,
                              color:
                                  inLogin ? Colors.transparent : Colors.orange,
                            ),
                          ),
                        ),
                        Commonfunctin.blankSpace(0, Width * 0.02),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Create Account. ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: 'New to Amazon?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ))
                        ]))
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                width: Width * Width,
                padding: EdgeInsets.symmetric(
                    horizontal: Width * 0.03, vertical: height * 0.01),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              inLogin = true;
                            });
                          },
                          child: Container(
                            height: height * 0.03,
                            width: height * 0.03,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                ),
                                color: Colors.white),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.circle,
                              size: height * 0.02,
                              color:
                                  inLogin ? Colors.orange : Colors.transparent,
                            ),
                          ),
                        ),
                        Commonfunctin.blankSpace(0, Width * 0.02),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Sign in. ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: 'Already a customer?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ))
                        ]))
                      ],
                    ),
                    Commonfunctin.blankSpace(
                      height * 0.01,
                      0,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                onSelect: (val) {
                                  setState(() {
                                    currentCountryCode = '+${val.phoneCode}';
                                  });
                                });
                          },
                          child: Container(
                            height: height * 0.06,
                            width: Width * 0.2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              currentCountryCode,
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
