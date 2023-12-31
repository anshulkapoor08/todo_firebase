import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  var formkey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  var username = '';
  bool isLoginPage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 15, right: 12),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          if (!isLoginPage)
            Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    key: const ValueKey('username'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Incorrect Username';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      username = value!;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(),
                      ),
                      labelText: 'Enter Username',
                      labelStyle: GoogleFonts.roboto(),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Incorrect email';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value!;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(),
                      ),
                      labelText: 'Enter email',
                      labelStyle: GoogleFonts.roboto(),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Incorrect password';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value!;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(),
                      ),
                      labelText: 'Enter password',
                      labelStyle: GoogleFonts.roboto(),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(15),
                      height: 80,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: Colors.white70)))),
                          onPressed: () {},
                          child: isLoginPage
                              ? Text(
                                  'Login',
                                  style: GoogleFonts.roboto(fontSize: 16),
                                )
                              : Text(
                                  'Signup',
                                  style: GoogleFonts.roboto(fontSize: 16),
                                ))),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            isLoginPage = !isLoginPage;
                          });
                        },
                        child: isLoginPage
                            ? const Text('Not a member?')
                            : const Text('Already a member?')),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
