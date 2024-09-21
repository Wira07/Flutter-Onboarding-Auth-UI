import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E2A), // Dark background color
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Log In Text
                Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),

                // Username Input
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Color(0xFF2E2E3A),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),

                // Password Input
                TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Color(0xFF2E2E3A),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),

                // Remember me & Forgot Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          activeColor: Colors.pink,
                        ),
                        Text('Remember me', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Log In Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.pink,
                    ),
                    child: Text(
                      'Log in',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                // Sign Up Text
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?', style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup'); // Navigate to SignUpScreen
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
