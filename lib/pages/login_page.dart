import "package:flutter/material.dart";
import "package:flutter_application_2/pages/sign_up_page.dart";
import "package:flutter_application_2/widget/widget_tree.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> myform = GlobalKey();
  bool cheak = false;
  bool obscure = true;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2E),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: myform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 100),
                Text(
                  'Log in                          ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Container(height: 40),

                // !USER NAME
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.pinkAccent),
                      ),

                      filled: true,
                      fillColor: Colors.transparent,
                      prefixIcon: Icon(Icons.person, color: Colors.white),

                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // !PASSWORD
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(

                    onSaved: (newValue) {
                      setState(() {
                        password = newValue;
                      });
                    },
                    
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'password must be at least 8 characters';
                      }
                      return null;
                    },
                    obscureText: obscure,
                    cursorColor: const Color(0xFFFF4081),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: Icon(obscure ?Icons.remove_red_eye_outlined: Icons.visibility_off_outlined),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.pinkAccent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      filled: true,
                      fillColor: Colors.transparent,
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                Container(height: 10),

                Row(
                  children: [
                    SizedBox(width: 35),
                    Checkbox(
                      value: cheak,
                      onChanged: (value) {
                        setState(() {
                          myform.currentState!.save();
                          cheak = value!;
                        });
                      },
                    ),
                    Text('Remember me', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text('Your password is : $password'),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 28),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        minimumSize: Size(300, 40),
                      ),
                      onPressed: () {
                        if (myform.currentState!.validate()) {
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
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(height: 140),
                Text('Or sign in with', style: TextStyle(color: Colors.white)),
                Container(height: 10),
                Row(
                  children: [
                    SizedBox(width: 80),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.facebook, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.telegram, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.android, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info_outline_sharp, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('                   Dont have an account ?'),
                    TextButton(
                      focusNode: FocusNode(),
                      isSemanticButton: false,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Sign up',
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


// class MyTxetForm extends StatefulWidget {
 

//    const MyTxetForm({
//     super.key,
//   required this.hinttext,
//    required this.iconform,
//   }
//    );
//  final String hinttext;
//   final Icon iconform;
//   @override
//   State<MyTxetForm> createState() => _MyTxetFormState();
// }

// class _MyTxetFormState extends State<MyTxetForm> {
 

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Requierd';
//         }
//         return null;
//       },

//       keyboardType: TextInputType.name,
//       cursorColor: Colors.pinkAccent,
//       decoration: InputDecoration(
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide(color: Colors.pinkAccent),
//         ),

//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide(color: Colors.pinkAccent),
//         ),

//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide(color: Colors.pinkAccent),
//         ),

//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: const BorderSide(color: Colors.pinkAccent),
//         ),

//         filled: true,
//         fillColor: Colors.transparent,
//         prefixIcon: Icon(Icons.person, color: Colors.white),

//         hintText: 'Username',
//         hintStyle: TextStyle(color: Colors.white),
//       ),
//     );
//   }
// }
