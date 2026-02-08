import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/login_page.dart';
import 'package:flutter_application_2/widget/widget_tree.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? privacy;
  String? confirm;
  bool check = false;
  bool obscure = true;
  bool obscure1 = true;
  GlobalKey<FormState> myform1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: myform1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 100),

                Text(
                  'Sign up                           ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),

                Container(height: 40),

                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 33, right: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Requierd';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          cursorColor: Colors.pinkAccent,
                          decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.pinkAccent),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.pinkAccent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.pinkAccent),
                            ),
                            filled: true,
                            fillColor: Colors.transparent,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.pinkAccent,
                              ),
                            ),
                            hintText: 'First name',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 33, left: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Requierd';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          cursorColor: Colors.pinkAccent,
                          decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.pinkAccent),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.pinkAccent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.pinkAccent),
                            ),
                            filled: true,
                            fillColor: Colors.transparent,

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.pinkAccent,
                              ),
                            ),
                            hintText: 'Last name',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Requierd';
                      }
                      if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    cursorColor: Colors.pinkAccent,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      filled: true,
                      fillColor: Colors.transparent,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.pinkAccent),
                      ),
                      hintText: ' Email',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: TextFormField(
                    obscureText: obscure,
                    validator: (value) {
                      confirm = value;
                      if (value == null || value.isEmpty) {
                        return 'Requierd';
                      }
                      if (value.length < 8) {
                        return 'password must be at least 8 characters';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    cursorColor: Colors.pinkAccent,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      filled: true,
                      fillColor: Colors.transparent,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.pinkAccent),
                      ),
                      hintText: ' Password',
                      hintStyle: TextStyle(color: Colors.white),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: Icon(
                          obscure
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: TextFormField(
                    obscureText: obscure1,
                    validator: (value) {
                      if (confirm != value) {
                        return 'Somthing is wrong';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    cursorColor: Colors.pinkAccent,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      filled: true,
                      fillColor: Colors.transparent,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.pinkAccent),
                      ),
                      hintText: ' Confirm password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure1 = !obscure1;
                          });
                        },
                        icon: Icon(
                          obscure1
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                        ),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(height: 15),
                Row(
                  children: [
                    SizedBox(width: 30),

                    Checkbox(
                      value: check,
                      onChanged: (value) {
                        setState(() {
                          privacy = value;
                          check = value!;
                        });
                      },
                    ),
                    
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'I Agree with ',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: 'privacy ',
                            style: TextStyle(color: Colors.pinkAccent),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: 'policy',
                            style: TextStyle(color: Colors.pinkAccent),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(height: 15),
                FilledButton(
                  onPressed: () {
                    if (privacy == true && myform1.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WidgetTree();
                          },
                        ),
                      );
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    minimumSize: Size(300, 40),
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(height: 95),
                Row(
                  children: [
                    Text('                  Already have an account ?  '),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
