import 'package:flutter/material.dart';
import 'package:login_ui/screens/sign_up.dart';

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
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      //redirect to signup screen
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.transparent,
                        shadows: [Shadow(offset: Offset(0, -15), color: Colors.black)],

                      ),
                    ),
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.transparent,
                      shadows: [Shadow(offset: Offset(0, -15), color: Colors.black)],
                      decoration: TextDecoration.underline,
                      decorationThickness: 3,
                      decorationColor: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                margin: const EdgeInsets.only(bottom: 3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your email address',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    onChanged: (value) {
                      // Do something with the user input
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    onChanged: (value) {
                      // Do something with the user input
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
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
                      const Text('Remember Me')
                    ],
                  ),
                  const Text('Forgot Password?')
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.grey.shade400,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      //do something
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'or  ',
                    style: TextStyle(fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      // redirect to Sign Up Screen
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20, decoration: TextDecoration.underline),
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
