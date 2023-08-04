import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/detailsview.dart';
import 'package:movies_app/watchlistview.dart';
import 'package:outlined_text/outlined_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

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
  final List<String> images = [
    'assets/images/spider.png',
    'assets/images/spider.png',
    'assets/images/spider.png',
    'assets/images/spider.png',
    'assets/images/spider.png',
  ];
  void _onItemTapped(int index) {
    if (index == 2) {
      // If the "Watch List" option is selected
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WatchList()),
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
          Padding(
            padding: EdgeInsets.only(top: 40, right: 80),
            child: Container(
              child: Text(
                "What do you want to watch?",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3A3F47),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size.fromHeight(42),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Color(0xFF67686D)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: Icon(
                      Icons.search,
                      color: Color(0xFF67686D),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 225,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(images.length,
                          (index) => ImageCard(images[index], index + 1)))),
            ),
          ),
          Container(
            height: 225,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Now Playing",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                        Container(
                          width: 80.0,
                          height: 3,
                          color: Color(0xFF3A3F47),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Up Coming",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Top Roted",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              Container(
                height: 174,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailView()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/spider.png',
                                  width: 80,
                                  height: 125,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailView()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/spider.png',
                                  width: 80,
                                  height: 125,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailView()),
                                    );
                                  },
                                  child: Image.asset('assets/images/spider.png',
                                      width: 80,
                                      height: 125,
                                      fit: BoxFit.cover),
                                )),
                          ))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailView()),
                                    );
                                  },
                                  child: Image.asset('assets/images/spider.png',
                                      width: 80,
                                      height: 125,
                                      fit: BoxFit.cover),
                                )),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailView()),
                                    );
                                  },
                                  child: Image.asset('assets/images/spider.png',
                                      width: 80,
                                      height: 125,
                                      fit: BoxFit.cover),
                                )),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailView()),
                                    );
                                  },
                                  child: Image.asset('assets/images/spider.png',
                                      width: 80,
                                      height: 125,
                                      fit: BoxFit.cover),
                                )),
                          ))
                        ],
                      )
                    ],
                  ),
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

class ImageCard extends StatelessWidget {
  final String imagePath;
  final int imageNumber;

  ImageCard(this.imagePath, this.imageNumber);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF242A32),
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        height: 190,
        width: 130,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                imagePath,
                width: 120,
                height: 175,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 85,
              right: 87,
              child: Container(
                padding: EdgeInsets.all(4.0),
                child: OutlinedText(
                    text: Text('$imageNumber',
                        style: GoogleFonts.montserrat(
                            color: Color(0xFF242A32),
                            fontSize: 100,
                            fontWeight: FontWeight.bold)),
                    strokes: [
                      OutlinedTextStroke(color: Color(0xFF0296E5), width: 5),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
