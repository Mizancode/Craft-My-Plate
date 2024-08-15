import 'package:craft_my_plate/screens/auth.dart';
import 'package:craft_my_plate/screens/start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void logIn() {
      _firebaseAuth
          .signInWithEmailAndPassword(
              email: emailController.text.toString(),
              password: passwordController.text.toString())
          .then((value) {
        emailController.clear();
        passwordController.clear();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Start()));
        return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('User Login Successfully...'),
          duration: Duration(seconds: 1),
        ));
      })
          // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
          .onError((error, StackTrace) {
        return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(error.toString()),
          duration: const Duration(seconds: 1),
        ));
      });
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/Logo.svg',
                  ),
                  Text(
                    'India’s 1st Dynamic Pricing Food Catering App',
                    style: GoogleFonts.lexend(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(252, 255, 247, 1)),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(123, 123, 123, 1),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigate to another screen when the text is tapped
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Auth()),
                                  );
                                },
                              text: 'Sign Up ',
                              style: const TextStyle(color: Colors.deepPurple)),
                          const TextSpan(
                            text: 'with Craft My Plate',
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a Email Please';
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: GoogleFonts.lexend(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a Password Please';
                      }
                      return null;
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.lexend(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        logIn();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Set the roundness of corners
                        ),
                        minimumSize: const Size(double.infinity, 50),
                        backgroundColor: Colors.deepPurple),
                    child: Text(
                      'Log In',
                      style: GoogleFonts.lexend(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
