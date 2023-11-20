import 'package:flutter/material.dart';
import 'package:test_app/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String massage = 'Halo gaes';

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
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Icon(Icons.calendar_month_rounded),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Every Day",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: Column(
                            children: [
                              Icon(Icons.schedule_rounded),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "10am-10pm",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: Column(
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
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Welcome to Axcent Coworking Space, the epitome of collaborative work environments. Here, innovation and productivity converge in a dynamic space designed for professionals, freelancers, and entrepreneurs alike. With modern workstations, high-speed internet, and fully equipped meeting rooms, Axcent provides the ideal backdrop for your success. Our community-driven approach fosters networking, idea exchange, and growth, creating a vibrant ecosystem where diverse minds come together. Comfort meets professionalism, with stylish interiors, natural light, and a kitchenette for your convenience. Join Axcent Coworking Space and elevate your work experience in a community that champions your success.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: Image.asset(
                                'assets/image1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: Image.asset(
                                'assets/image2.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: Image.asset(
                                'assets/image1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(massage)));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Selanjutnya",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
