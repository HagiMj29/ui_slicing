import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_slicing/page/home_image_card.dart';
import 'package:ui_slicing/widgets/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Image.asset('images/img_2.png', height: MediaQuery.of(context).size.height, fit: BoxFit.cover,),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: colorTheme,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40, left: 50),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi Handwerker!",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Find Your Doctor",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 25, right: 50),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/img_3.png'),
                          radius: 40,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(),
            Positioned(
              top: 120.0,
              left: 40.0,
              right: 40.0,
              child: AppBar(
                elevation: 12,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                leading: Icon(Icons.search),
                primary: false,
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Live Doctor!"),
                ),
                SizedBox(
                  height: 5,
                ),
                ImageCard(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     blurRadius: 5,
            //     spreadRadius: 2,
            //     offset: Offset(0, 3), // Changes the position of the shadow
            //   ),
            // ],
            color: Colors.white24,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight:  Radius.circular(15))),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Icon(Icons.home, color: Colors.green,),],
                  ),
                )),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Icon(Icons.favorite, color: Colors.green,),],
                  ),
                )),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Icon(Icons.book, color: Colors.green,), ],
                  ),
                )),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Icon(Icons.chat, color: Colors.green,), ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
