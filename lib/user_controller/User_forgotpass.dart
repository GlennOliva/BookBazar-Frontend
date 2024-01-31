import 'package:book_bazar_finalproj/user_controller/User_login.dart';
import 'package:flutter/material.dart';

class ForgotpassPage extends StatefulWidget {
  const ForgotpassPage({required Key key}) : super(key: key);

  @override
  State<ForgotpassPage> createState() => _ForgotpassPageState();
}

class _ForgotpassPageState extends State<ForgotpassPage> {
// Initially obscure the password text

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
                        'FORGOTPASS FORM',
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
    
                Container(
                  margin: const EdgeInsets.all(20),
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
                      'FORGOT PASSWORD',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A909F),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF0A909F),
    );
  }
}
