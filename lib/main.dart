import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_ui/screens/login.dart';
import 'package:login_ui/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Authentication',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: SignUp.id,
          routes: {
            SignUp.id : (context)=> const SignUp(),
            Login.id : (context)=> const Login()
          },
        );

      },


    );
  }
}

