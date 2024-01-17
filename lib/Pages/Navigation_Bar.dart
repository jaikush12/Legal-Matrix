import 'package:flutter/material.dart';
import 'package:prison/Pages/Articles.dart';
import 'package:prison/Pages/Chat_Section.dart';
import 'package:prison/Pages/Dashboard.dart';
import 'package:prison/Pages/Lawyers_List.dart';
import 'package:prison/Pages/Log_In.dart';
import 'package:prison/Pages/Rehabilutation_page.dart';

class Navigation_Bar extends StatefulWidget {
  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {
  Color ContainColor = Color(0xFFEBEBEB);
  int _currentIndex = 0;
  // To keep track of the selected tab
  final List<Widget> _tabs = [
    DashboardPage(),
    Chat_Section(),
    Artiles_page(),
    Lawyer_Page(),
    Rehabulutation_Page()
  ];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: h * 0.22,
          backgroundColor: Color(0xFFEBEBEB),
          title: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: w * 0.75,
                        height: 70,
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.only(bottom: 10, top: 10),
                        child: Container(
                          width: w * 0.65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TextFormField(
                              decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon:
                                Icon(Icons.search, color: Color(0xFF969696)),
                            label: Text('Search...',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xFF969696))),
                          )),
                        ),
                      ),
                      Container(
                        width: w * 0.1,
                        height: 35,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color(0xFF555555),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(Icons.notifications, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: w * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Logout",
                              style: TextStyle(
                                  fontSize: 7,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF555555)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
      body: _tabs[_currentIndex],
      bottomNavigationBar: Container(
        color: Color(0xFFEBEBEB),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child: Theme(
            data: Theme.of(context).copyWith(
              // Set the background color of the bottom navigation bar
              canvasColor: Color(0xFF5F57B5),
            ),
            child: BottomNavigationBar(
              backgroundColor: Color(0xFFEBEBEB),
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  if (5 == index) {
                    ContainColor = Colors.white;
                  }
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.apps),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.email),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_books_sharp),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
