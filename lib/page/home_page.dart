
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_slicing/dila/page/doctor_appointment_screen_01.dart';
import 'package:ui_slicing/dila/page/login_screen_01.dart';
import 'package:ui_slicing/dila/page/medical_record_screen_01.dart';
import 'package:ui_slicing/dila/page/medicine_order_screen.dart';
import 'package:ui_slicing/dila/page/my_doctors_screen.dart';
import 'package:ui_slicing/fiza/help_center.dart';
import 'package:ui_slicing/fiza/privacy_policy.dart';
import 'package:ui_slicing/fiza/profile_screen.dart';
import 'package:ui_slicing/fiza/setting_screen.dart';
import 'package:ui_slicing/page/favorite_doctor_page.dart';
import 'package:ui_slicing/page/find_doctor_page.dart';
import 'package:ui_slicing/page/live_page.dart';
import 'package:ui_slicing/page/popular_doctor_page.dart';
import 'package:ui_slicing/widgets/home_button_category_card.dart';
import 'package:ui_slicing/widgets/home_doctor_feature.dart';
import 'package:ui_slicing/widgets/home_image_card.dart';
import 'package:ui_slicing/widgets/popular_home_doctor.dart';
import 'package:ui_slicing/widgets/theme.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../fiza/doctors_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();


  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      inverse: false,
      menu: buildMenu(),
      type: SideMenuType.shrinkNSlide,
      background: sidemenuTheme,
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: IgnorePointer(
        ignoring: isOpened,
        child: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'images/img_2.png',
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
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
                FloatingActionButton(
                  mini: true,
                  onPressed: () => toggleMenu(true),
                  backgroundColor: Colors.green,
                  child: Icon(Icons.menu),
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
                    leading: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindDoctorPage()));
                        },
                        child: Icon(Icons.search)),
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
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LivePage()));
                          },
                          child: Text(
                            "Live Doctor!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ImageCard(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: CategoryCards(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PopularDoctorPage()));
                        },
                        child: Text(
                          "Popular Doctor",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: PopularDoctor(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorsPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Feature Doctor",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("See all>")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: FeatureDoctor(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavoriteDoctorPage()));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorAppointmentScreen01()));
                        },
                        child: Container(
                                            child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.book,
                            color: Colors.green,
                          ),
                        ],
                                            ),
                                          ),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.chat,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/img_25.png'),
                    radius: 22.0,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abdullah Mamun",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.phone_fill,size: 15,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("081237485772", style: TextStyle(
                            color: Colors.white
                          ),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyDoctorScreen()));
            },
            leading: const Icon(Icons.person, size: 20.0, color: Colors.white),
            title: const Text("My Doctors"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalRecordScreen01()));
            },
            leading: const Icon(Icons.medication_liquid_outlined,
                size: 20.0, color: Colors.white),
            title: const Text("Medical Records"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.credit_card,
                size: 20.0, color: Colors.white),
            title: const Text("Payments"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineOrderScreen()));
            },
            leading: const Icon(Icons.medication,
                size: 20.0, color: Colors.white),
            title: const Text("Medicine Order"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              
            },
            leading:
                const Icon(Icons.calendar_month_sharp, size: 20.0, color: Colors.white),
            title: const Text("Test Bookings"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicyPage()));
            },
            leading:
                const Icon(Icons.verified_user, size: 20.0, color: Colors.white),
            title: const Text("Privacy & Policy"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),

          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpCenterPage()));
            },
            leading:
            const Icon(Icons.help, size: 20.0, color: Colors.white),
            title: const Text("Help Center"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),

          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
            },
            leading:
            const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Settings"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          SizedBox(height: 100,),

          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 16),
                        Column(
                          children: [
                            Text(
                              'Logout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Are you sure want to logout?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pop(); // Tutup dialog saat tombol ditekan
                          },
                          child: Text(
                            "Cancel",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen01())); // Tutup dialog saat tombol ditekan
                          },
                          child: Text(
                            "Ok",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )

                    ],
                  );
                },
              );
            },
            leading:
            const Icon(Icons.door_back_door, size: 20.0, color: Colors.white),
            title: const Text("Logout"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
