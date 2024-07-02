import 'package:flutter/material.dart';
import 'package:learn_ease/packages/loginAndReg.dart';
import 'package:learn_ease/packages/userInfo.dart';
import 'package:learn_ease/screens/sign_in.dart';
import 'package:email_validator/email_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  static const routeName = '/sign up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _key = GlobalKey();
  String? _email;
  String? _fName;
  String? _lName;
  final TextEditingController _password = TextEditingController();
  final TextEditingController? _confirmPassword = TextEditingController();
  userInfo? _userData;
  List<userInfo> allUsers = [];

  String? validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (!regex.hasMatch(value)) {
      return 'Enter valid password';
    }
    return null;
  }

  String email = 'fredrik.eilertsen@gail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 70, left: 15, right: 15),
          child: Column(
            children: [
              const Column(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Please provide us with your information in order to Create your account',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: _key,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ListTile(
                              title: const Text('First Name'),
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  hintText: 'First Name',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter your first name';
                                  } else if (value.length <= 2) {
                                    return 'Too short, must be 3-characters at least';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _fName = value!;
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ListTile(
                              title: const Text('Last Name'),
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  hintText: 'Last Name',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter your Last name';
                                  } else if (value.length <= 2) {
                                    return 'Too short, must be 3-characters at least';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _lName = value!;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      height: 60,
                      child: ListTile(
                        title: const Text('Email'),
                        subtitle: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            hintText: 'Email',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your email';
                            } else if (!EmailValidator.validate(value)) {
                              return 'please enter valid email';
                            }

                            return null;
                          },
                          onSaved: (value) {
                            _email = value!;
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      margin: const EdgeInsets.only(top: 20),
                      child: ListTile(
                        title: const Text('Password'),
                        subtitle: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            hintText: 'Password',
                          ),
                          controller: _password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter password';
                            } else if (validatePassword(value) != null) {
                              return 'password must contains at least(8-character,Upper+Lower case,number,symbol)';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      margin: const EdgeInsets.only(top: 20),
                      child: ListTile(
                        title: const Text('Confirm Password'),
                        subtitle: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            hintText: 'Re-enter the same Password',
                          ),
                          controller: _confirmPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter the same password';
                            } else if (value != _password.text) {
                              return 'password not match';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 35),
                      width: 330,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              _key.currentState!.save();
                              _userData = userInfo(
                                  fName: _fName,
                                  lName: _lName,
                                  email: _email,
                                  password: _password.text);

                              allUsers.add(_userData!);
                              print(_userData);
                              Navigator.pushNamed(context, SignIn.routeName,
                                  arguments: UserClass(allUsers!));
                            } else {
                              print('Sign up failed');
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
                            'SIGN UP',
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
                                return Colors.blue.withOpacity(0.12);
                              return null; // Defer to the widget's default.
                            },
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SignIn.routeName,
                              arguments: UserClass(allUsers));
                        },
                        child: const Text('Already Have an account? Sign In')),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Color.fromARGB(221, 15, 0, 0),
                          minimumSize: Size(100, 50),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                        ).copyWith(
                          side: MaterialStateProperty.resolveWith<BorderSide?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 1,
                                );
                              }
                              return null;
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Outline Button'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
