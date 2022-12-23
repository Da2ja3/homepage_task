import 'package:flutter/material.dart';

import '../Widget/reusable_widget.dart';
import '../utils/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    String select = "first";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            customTextWidget(
                              text: 'Hello Ese',
                              color: Colors.white,
                              size: 14,
                              weight: FontWeight.w600,
                            ),
                            const SizedBox(
                              width: 241,
                            ),
                            InkWell(
                              child: Icon(
                                Icons.notifications_rounded,
                                color: Colors.white,
                              ),
                              onTap: () {
                                // print("The icon is clicked");
                              },
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/pcard.png'),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: ash5,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/Icon.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 224,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: ash5,
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/Icon.png'),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 26,),
                      Row(
                        children: [ InkWell(
                                  onTap: () {
                                    setState(() {
                                      select = 'first';
                                    });
                                  },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 72.0),
                              child: customTextWidget(
                                text: 'Wallet',
                                size: 14,
                                weight: FontWeight.w600,
                                color: select == 'first' ? Colors.white : ash2,

                              ),
                            ),
                          ),
                          SizedBox(width: 147),
                          InkWell(
                            onTap: () {
                              setState(() {
                                select = 'first';
                              });
                            },
                          child: customTextWidget(
                            text: 'Cards',
                            size: 14,
                            weight: FontWeight.w600,
                            color: select == 'second' ? white : selectColor,

                          ),

                      ),
                    ]
                    )
            ]
        )
    ))));
  }
}
