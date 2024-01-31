import 'package:book_bazar_finalproj/user_controller/Dashboard.dart';
import 'package:book_bazar_finalproj/user_controller/User_forgotpass.dart';
import 'package:book_bazar_finalproj/user_controller/User_register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({required Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true; // Initially obscure the password text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A909F),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'images/gamco-logo.png',
                  height: 200,
                  width: 250,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.white),
                      icon: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.email_sharp,
                          color: Colors.white,
                        ),
                      ),
                      border: InputBorder.none, // Remove the default underline
                    ),
                    style: TextStyle(color: Colors.white), // Text color
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.white),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText; // Toggle the visibility
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.remove_red_eye
                              : Icons.visibility_off, // Toggle icon
                          color: Colors.white,
                        ),
                      ),
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      border: InputBorder.none, // Remove the default underline
                    ),
                    style: const TextStyle(color: Colors.white), // Text color
                    obscureText: _obscureText, // Use the updated _obscureText value
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                           Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                        const ForgotpassPage(key: Key('unique_key'))
                        ),
                       );
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF79ECF9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF79ECF9),
                      minimumSize: const Size.fromHeight(60),
                    ),
                    onPressed: () {
                      // Handle login logic here
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                        DashboardPage()
                        ),
                       );
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A909F),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                       Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                        const RegisterPage(key: Key('unique_key'))
                        ),
                       );
                      },
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF79ECF9),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF0A909F),
    );
  }
}
