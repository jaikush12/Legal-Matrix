import 'package:flutter/material.dart';

class Artiles_page extends StatelessWidget {
  const Artiles_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(Icons.library_books_sharp,
                      color: Color(0xFF393939), size: 30),
                  Text("Articles",
                      style: TextStyle(
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w700,
                          fontSize: 41)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: h * 0.56,
                child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.symmetric(
                              vertical: BorderSide(
                                  color: Colors.grey.withOpacity(0.3))),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 0.3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Article - 5",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              Text("30 Dec 2018 , 12:34",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8B949E)))
                            ],
                          ),
                          subtitle: Text(
                              "Article 5 of the Universal Declaration of\nHuman Rights",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF8B949E))),
                        ),
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
              color: Color(0xFFEBEBEB),
            )
          ],
        ),
      ),
    );
  }
}
