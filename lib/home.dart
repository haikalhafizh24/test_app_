import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Row(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Image.asset(
                    'assets/header.jpg',
                    fit: BoxFit.cover,
                    // width: double.infinity,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  child: const Column(children: [
                    Text(
                      'Axcent Coworking Space',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.calendar_month_rounded),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Open Every Time",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.schedule_rounded),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "10am - 10pm",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.paid),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Rp50.000",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
