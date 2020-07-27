import 'package:burc_rehberi/burcListesi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BurcRehberi());
}

class BurcRehberi extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings){
        return MaterialPageRoute(builder: (context)=>BurcDetayi(settings.arguments));
      },
      debugShowCheckedModeBanner: false,
      title: 'Burç Rehberi',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      darkTheme:ThemeData(brightness:Brightness.dark ) ,
      themeMode: ThemeMode.system,
      home: BurcListesi(),
    );
  }
}
