import 'package:flutter/material.dart';
import 'package:login_ui/screens/sign_up.dart';

import '../utils/app_layout.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static String id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.3,
          margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(
              Radius.circular(AppLayout.getHeight(20)),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      //redirect to signup screen
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: AppLayout.getHeight(20),
                        fontWeight: FontWeight.bold,
                        color: Colors.transparent,
                        shadows: [
                          Shadow(
                              offset: Offset(0, AppLayout.getHeight(-15)),
                              color: Colors.black)
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: AppLayout.getHeight(20),
                      fontWeight: FontWeight.bold,
                      color: Colors.transparent,
                      shadows: [
                        Shadow(
                            offset: Offset(0, AppLayout.getHeight(-15)),
                            color: Colors.black)
                      ],
                      decoration: TextDecoration.underline,
                      decorationThickness: 3,
                      decorationColor: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppLayout.getHeight(10),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
                margin: EdgeInsets.only(bottom: AppLayout.getHeight(3)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(10)),
                    topRight: Radius.circular(AppLayout.getHeight(10)),
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your email address',
                      labelText: 'Email',
                      hintStyle: TextStyle(fontSize: AppLayout.getHeight(10)),
                      labelStyle: TextStyle(fontSize: AppLayout.getHeight(13)),
                      prefixIcon: Icon(Icons.email, size: AppLayout.getHeight(20)),
                    ),
                    onChanged: (value) {
                      // Do something with the user input
                    },
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(10)),
                    bottomLeft: Radius.circular(AppLayout.getWidth(10)),
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      hintStyle: TextStyle(fontSize: AppLayout.getHeight(10)),
                      labelStyle: TextStyle(fontSize: AppLayout.getHeight(13)),
                      prefixIcon: Icon(Icons.lock, size: AppLayout.getHeight(20)),
                    ),
                    onChanged: (value) {
                      // Do something with the user input
                    },
                  ),
                ),
              ),
              SizedBox(
                height: AppLayout.getHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        value: false,
                        shape: const CircleBorder(),
                        onChanged: (bool? value) {
                          //do something
                        },
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: AppLayout.getHeight(15),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: AppLayout.getHeight(15),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: AppLayout.getHeight(10),
              ),
              Padding(
                padding:
                EdgeInsets.symmetric(vertical: AppLayout.getHeight(16)),
                child: Material(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      AppLayout.getHeight(10),
                    ),
                  ),
                  elevation: AppLayout.getHeight(5),
                  child: MaterialButton(
                    onPressed: () {
                      //do something
                    },
                    minWidth: AppLayout.getWidth(200),
                    height: AppLayout.getHeight(40),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: AppLayout.getHeight(17),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: AppLayout.getHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'or  ',
                    style: TextStyle(fontSize: AppLayout.getHeight(15)),
                  ),
                  InkWell(
                    onTap: () {
                      // redirect to Sign Up Screen
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: AppLayout.getHeight(20),
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
