import 'package:flutter/material.dart';
import 'package:movies_app/homeview.dart';

class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  int _selectedIndex = 2;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Ana Sayfa',
      style: TextStyle(color: Color(0xFF67686D)),
    ),
    Text(
      'Mesajlar',
      style: TextStyle(color: Color(0xFF67686D)),
    ),
    Text(
      'Profil',
      style: TextStyle(color: Color(0xFF67686D)),
    ),
  ];

  static const List<Icon> _iconOptions = <Icon>[
    Icon(
      Icons.home_outlined,
      color: Color(0xFF67686D),
    ),
    Icon(
      Icons.search,
      color: Color(0xFF67686D),
    ),
    Icon(
      Icons.bookmark_add_outlined,
      color: Color(0xFF67686D),
    ),
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      // If the "Watch List" option is selected
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

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
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Color(0xFFEEEEEE),
                    size: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 85),
                child: Text(
                  'Watch List',
                  style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 16),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            color: Color(0xFF242A32),
            width: double.infinity,
            height: 150,
            child: Column(children: [
              Card(
                color: Color(0xFF242A32),
                margin: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset('assets/images/spider.png',
                            height: 120, width: 95, fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Spider-Man',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star_border,
                                color: Color(0xFFFF8700),
                                size: 15,
                              ),
                              Text(
                                '9.5',
                                style: TextStyle(
                                    color: Color(0xFFFF8700), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.theaters,
                                color: Color(0xFF92929D),
                                size: 15,
                              ),
                            ),
                            Text(
                              'Action ',
                              style: TextStyle(
                                  color: Color(0xFF92929D), fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Color(0xFF92929D),
                              size: 15,
                            ),
                            Text(
                              '2021 ',
                              style: TextStyle(
                                  color: Color(0xFF92929D), fontSize: 12),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.lock_clock,
                                color: Color(0xFF92929D),
                                size: 15,
                              ),
                              Text(
                                '148 Minutes ',
                                style: TextStyle(
                                    color: Color(0xFF92929D), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xFF0296E5), width: 0.5),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Color(0xFF242A32),
          items: [
            BottomNavigationBarItem(
              icon: _iconOptions[0],
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _iconOptions[1],
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: _iconOptions[2],
              label: 'Watch List',
            ),
          ],
        ),
      ),
    );
  }
}
