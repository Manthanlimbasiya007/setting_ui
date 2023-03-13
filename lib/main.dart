import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:setting_app/screens/home/provider/homeprovider.dart';
//import 'package:setting_app/screens/home/view/homescreen.dart';
import 'package:setting_ui/screen/provider/home_provider.dart';
import 'package:setting_ui/screen/view/home_screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Homescreen(),
        },
      ),
    ),
  );
}