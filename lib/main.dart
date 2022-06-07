import 'package:flutter/material.dart';
import 'package:payroll_app_v2/views/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payroll_app_v2/views/leave/leave.dart';
import 'package:payroll_app_v2/views/leave/leave_create.dart';
import 'package:payroll_app_v2/views/leave/leave_detail.dart';
import 'package:payroll_app_v2/views/permission/permission.dart';
import 'package:payroll_app_v2/views/permission/permission_create.dart';
import 'package:payroll_app_v2/views/permission/permission_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/leaves': (context) => const LeavePage(),
        '/leaves/create': (context) => const LeaveCreatePage(),
        '/leaves/show': (context) => const LeaveDetailPage(),
      //  permission page
        '/permission': (context) => const PermissionPage(),
        '/permission/create': (context) => const PermissionCreatePage(),
        '/permission/show' : (context) => const PermissioinDetailPage(),
      },
    );
  }
}


