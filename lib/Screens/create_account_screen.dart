import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test/Screens/log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  String? email, password, confirmedPassword;
  bool passwordVisible = true, isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      color: const Color(0xFF7CA0CA),
      blur: 1.5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 10),
          //   child: Image.asset(
          //     'images/diente.png'),
          // ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7CA0CA),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(17),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create Your\nAccount',
                    style: TextStyle(
                      color: Color(0xFF1B2A57),
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 10,
                    ),
                    child: TextFormField(
                      validator: (data) {
                        if (data!.isEmpty) return 'Field is required';
                        return null;
                      },
                      onChanged: (data) {
                        email = data;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(color: Color(0xFFF2F4F7)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        fillColor: const Color(0xFFF2F4F7),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Color(0xFF98A2B2),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.11,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: TextFormField(
                      validator: (data) {
                        if (data!.isEmpty) return 'Field is required';
                        return null;
                      },
                      obscureText: passwordVisible,
                      onChanged: (data) {
                        password = data;
                      },
                      cursorColor: const Color(0xFF1B2A57),
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(color: Color(0xFFF2F4F7)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        fillColor: const Color(0xFFF2F4F7),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Color(0xFF98A2B2),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.11,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFF98A2B2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: TextFormField(
                      validator: (data) {
                        if (data!.isEmpty) return 'Field is required';
                        return null;
                      },
                      obscureText: passwordVisible,
                      onChanged: (data) {
                        confirmedPassword = data;
                      },
                      cursorColor: const Color(0xFF1B2A57),
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(color: Color(0xFFF2F4F7)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        fillColor: const Color(0xFFF2F4F7),
                        labelText: 'Confirm Password',
                        labelStyle: const TextStyle(
                          color: Color(0xFF98A2B2),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                          letterSpacing: 0.11,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFF98A2B2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        if (password == confirmedPassword) {
                          try {
                            UserCredential user = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: email!, password: password!);

                            log(user.user!.email.toString());
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Color(0xFF7CA0CA),
                                content: Text(
                                  'Welcome',
                                ),
                              ),
                            );
                            log('success');
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Color(0xFF7CA0CA),
                                  content: Text(
                                    'The password provided is too weak.',
                                  ),
                                ),
                              );
                            } else if (e.code == 'email-already-in-use') {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Color(0xFF7CA0CA),
                                  content: Text(
                                    'The account already exists for that email.',
                                  ),
                                ),
                              );
                            }
                          } catch (e) {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: const Color(0xFF7CA0CA),
                                content: Text(
                                  e.toString(),
                                ),
                              ),
                            );
                          }
                          isLoading = false;
                          setState(() {});
                        } else {
                          log('Password doesn\'t match.');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Color(0xFF7CA0CA),
                              content: Text(
                                'Password doesn\'t match.',
                              ),
                            ),
                          );
                        }
                      }
                    },
                    child: Container(
                      width: 375,
                      height: 53,
                      decoration: BoxDecoration(
                        color: const Color(0xFF7CA0CA),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: SizedBox(
                      width: 141,
                      height: 40,
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF7CA0CA),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 76,
                        height: 1,
                        color: const Color(0xFF1B2A57),
                      ),
                      const SizedBox(
                        width: 117,
                        height: 13,
                        child: Text(
                          'Or continue with',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1B2A57),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 76,
                        height: 1,
                        color: const Color(0xFF1B2A57),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 77,
                        height: 52,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child:
                            Center(child: Image.asset('images/facebook.png')),
                      ),
                      const SizedBox(width: 32),
                      Container(
                        width: 77,
                        height: 52,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Center(child: Image.asset('images/google.png')),
                      ),
                      const SizedBox(width: 32),
                      Container(
                        width: 77,
                        height: 52,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Center(child: Image.asset('images/apple.png')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
