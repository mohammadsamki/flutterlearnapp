import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:learn_ease/packages/loginAndReg.dart';
import 'package:learn_ease/packages/userInfo.dart';
import 'package:learn_ease/screens/sign_up.dart';
import 'package:learn_ease/screens/user_profile.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  static const routeName = '/sign in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _key = GlobalKey();
  String? _email;
  String? _pass;
  userInfo? user;

  String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (!regex.hasMatch(value)) {
      return 'Enter valid password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as UserClass;
    print('args ${args.allUsers}');

    Future<void> _showMyDialog(String errorTitle, String errorMsg) async {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(errorTitle),
          content: Text(errorMsg, style: TextStyle(fontSize: 25)),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: Center(
      child: Container(
        margin: const EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Column(
          children: [
            const Column(
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Please provide us with your information in order to login your account',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
                autovalidateMode: AutovalidateMode.always,
                key: _key,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) {
                        _email = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your email';
                        } else if (!EmailValidator.validate(value)) {
                          return 'please enter valid email';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Email Address',
                        hintText: 'youremail@mail.com',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      onSaved: (value) {
                        _pass = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your password';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 370,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              _key.currentState!.save();
                              for (int i = 0; i < args.allUsers.length; i++) {
                                if (_email == args.allUsers[i].email) {
                                  if (_pass == args.allUsers[i].password) {
                                    print(args.allUsers[i]);
                                    Navigator.pushNamed(
                                        context, UserProfile.routeName,
                                        arguments: args.allUsers[i]);
                                  } else {
                                    _showMyDialog(
                                        'password', 'password not correct');
                                  }
                                } else {
                                  _showMyDialog('email',
                                      'This email is not register yet, Sign up please');
                                }
                              }
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromRGBO(104, 73, 239, 1)),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.blue.withOpacity(0.15);
                              return null; // Defer to the widget's default.
                            },
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            SignUp.routeName,
                          );
                        },
                        child:
                            const Text('Don’t you have an account? Sign Up')),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
