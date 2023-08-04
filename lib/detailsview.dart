import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242A32),
      body: Column(
        children: [
          SizedBox(height: 43),
          Container(
            color: Color(0xFF242A32),
            height: 40,
            child: Row(children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                  right: 30,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_outlined,
                      color: Color(0xFFEEEEEE)),
                ),
              )),
              Expanded(
                  child: Center(
                child: Text(
                  'Detail',
                  style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 16),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark, color: Color(0xFFEEEEEE)),
                ),
              ))
            ]),
          ),
          Card(
            child: Container(
              color: Color(0xFF242A32),
              width: double.infinity,
              height: 300,
              child: (Stack(
                children: [
                  Image.asset(
                    'assets/images/spiderman-no-way-home.png',
                    width: double.infinity,
                  ),
                  Positioned(
                      top: 130,
                      left: 20,
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/spider.png',
                              height: 120,
                              width: 95,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 75, left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Spider-Man No Way ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 115, top: 5),
                                    child: Text('Home',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      top: 165,
                      right: 5,
                      child: Container(
                        width: 75,
                        height: 30,
                        color: Color(0Xff252836).withOpacity(0.32),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.star_border,
                                  color: Color(0xFFFF8700),
                                  size: 16,
                                )),
                            Text(
                              '9.5',
                              style: TextStyle(
                                  color: Color(0xFFFF8700), fontSize: 12),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    top: 275,
                    left: 50,
                    child: Container(
                      color: Color(0xFF242A32),
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFF92929D),
                          ),
                          Text(
                            '2021 |',
                            style: TextStyle(color: Color(0xFF92929D)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Icon(Icons.lock_clock,
                                color: Color(0xFF92929D)),
                          ),
                          Text(
                            '148 Minutes |',
                            style: TextStyle(color: Color(0xFF92929D)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child:
                                Icon(Icons.theaters, color: Color(0xFF92929D)),
                          ),
                          Text(
                            'Action',
                            style: TextStyle(color: Color(0xFF92929D)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'About Movie',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationThickness: 4.0,
                              decorationColor: Color(0xFF3A3F47),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Reviews',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cast',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
                Text(
                  'From DC Comics comes the Suicide Squad, an',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'antihero team of incarcerated supervillains who act',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'as deniable assets for the United States government,',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'undertaking high-risk black ops missions in',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'exchange for commuted prison sentences.',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
