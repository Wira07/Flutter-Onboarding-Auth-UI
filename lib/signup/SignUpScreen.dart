import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscurePassword = true;
  bool _isObscureConfirmPassword = true;
  bool _isAgreed = false;

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
                // Sign Up Text
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),

                // First Name & Last Name Inputs
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'First Name',
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
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
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
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Email Input
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                  obscureText: _isObscurePassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscurePassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscurePassword = !_isObscurePassword;
                        });
                      },
                    ),
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

                // Confirm Password Input
                TextField(
                  obscureText: _isObscureConfirmPassword,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscureConfirmPassword = !_isObscureConfirmPassword;
                        });
                      },
                    ),
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

                // Agreement Checkbox
                Row(
                  children: [
                    Checkbox(
                      value: _isAgreed,
                      onChanged: (value) {
                        setState(() {
                          _isAgreed = value!;
                        });
                      },
                      activeColor: Colors.pink,
                    ),
                    Expanded(
                      child: Text(
                        'I agree to the Terms and Conditions',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Sign Up Button
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
                      'Sign Up',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
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
