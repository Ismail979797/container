import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Ismail',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
              Text(
                'Lets get Something',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 100,
                      width: 220,
                      decoration: BoxDecoration(
                        color: Color(0XFFF46D38),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '40 % off During\nCovid 19',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/life.jpg',
                                  height: 45,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 220,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 22, 72, 179),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '40 % off During\nCovid 19',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/life.jpg',
                                  height: 45,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Top categories',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
