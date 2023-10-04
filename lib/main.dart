import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sept13_provider_next_page_display/providers/UserProvider.dart';
import 'package:sept13_provider_next_page_display/screens/LoginPage.dart';

void main() {
  runApp(MyApp()
    // ChangeNotifierProvider(
    //   create: (context) => UserProvider(),
    //   child:  MyApp(),
    // )
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        home: LoginPage(),
      ),
    );
  }
} 