import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/profile.dart';
import '../database.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final _formkey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bots \'n Bids'),
        backgroundColor: kSecondaryColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text('Login', style: kTextBodyHeader),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Username required!";
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password required!";
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: remember,
                            onChanged: (bool? value) {
                              setState(() {
                                remember = value!;
                              });
                            },
                          ),
                          const Text(
                            'Remember',
                          ),
                        ],
                      ),
                      const Row(
                        children: <Widget>[
                          Text('Forgot?'),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          Globals().login(Profile(
                            name: 'John Roe',
                            email: 'johnroe@gmail.com',
                            password: 'password',
                            memberType: MemberType.Judge,
                          ));
                        });

                        Navigator.pushNamed(context, '/home');
                      }
                    },
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
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
