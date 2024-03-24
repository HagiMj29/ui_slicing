import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_slicing/dila/page/sign_up_screen.dart';

import 'login_screen_02.dart';

class LoginScreen01 extends StatefulWidget {
  const LoginScreen01({Key? key}) : super(key: key);

  @override
  State<LoginScreen01> createState() => _LoginScreen01State();
}

class _LoginScreen01State extends State<LoginScreen01> {
  bool _obscurePassword = true;
  String? _name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'images/dila/background/bg.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 70),
                Center(
                  child: Text(
                    'Welcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'You can search course, apply course, and find\nscholarship for abroad studies',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                SizedBox(height: 50),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            ElevatedButton.icon(
                              onPressed: () {
                                // Action ketika tombol ditekan
                              },
                              icon: Image.asset('images/dila/icon/google.png'),
                              label: Text(
                                'Google',
                                style: TextStyle(color: Colors.blue),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                // Background color tombol
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // Mengatur border radius
                                ),
                                fixedSize: Size(160, 54),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            ElevatedButton.icon(
                              onPressed: () {
                                // Action ketika tombol ditekan
                              },
                              icon:
                                  Image.asset('images/dila/icon/facebook.png'),
                              label: Text(
                                'Facebook',
                                style: TextStyle(color: Colors.blue),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                // Background color tombol
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // Mengatur border radius
                                ),
                                fixedSize: Size(160, 54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 450,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Email',
                            suffixIcon: _name != null && _name!.isNotEmpty
                                ? Icon(Icons.check, color: Colors.green)
                                : null,
                          ),
                          onChanged: (value) {
                            setState(() {
                              _name = value.trim();
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 450,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.withOpacity(0.2),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(_obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(
                          horizontal: 175,
                          vertical: 15,
                        ),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return LoginScreen02();
                                    });
                              },
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(height: 50),
                            // Menambahkan jarak vertikal di antara dua link
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                              },
                              child: Text(
                                'Dont have an account? Join us',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
