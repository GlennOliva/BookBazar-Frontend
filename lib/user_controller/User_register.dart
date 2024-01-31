import 'package:book_bazar_finalproj/user_controller/User_login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({required Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                const Text(
                        'REGISTER FORM',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF79ECF9),
                        ),
                      ),
                      const SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.white),
                      icon: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.people_alt_sharp,
                          color: Colors.white,
                        ),
                      ),
                      border: InputBorder.none, // Remove the default underline
                    ),
                    style: TextStyle(color: Colors.white), // Text color
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
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
                      labelStyle: TextStyle(color: Colors.white),
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
                      icon: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      border: InputBorder.none, // Remove the default underline
                    ),
                    style: TextStyle(color: Colors.white), // Text color
                    obscureText: _obscureText, // Use the updated _obscureText value
                  ),
                ),
                const SizedBox(height: 5),
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
                        const LoginPage(key: Key('unique_key'))
                        ),
                       );
                    },
                    child: const Text(
                      'REGISTER',
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
                        const LoginPage(key: Key('unique_key'))
                        ),
                       );
                      },
                      child: const Text(
                        'LOGIN',
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
