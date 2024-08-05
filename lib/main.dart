import 'package:flutter/material.dart';
import 'package:tukang_com/Toko_Saya.dart';
import 'package:tukang_com/home_page.dart';
import 'package:tukang_com/halaman_pesanan.dart';
import 'package:tukang_com/halaman_akun.dart';
import 'package:tukang_com/splash_screen.dart';

void main() {
  runApp(

    MaterialApp(
    initialRoute: '/splash_screen',
   
    routes: {
      '/home_page':(context) => HomePage(),
      '/halaman_pesanan':(context) => OrderPage(),
      '/Toko_Saya':(context) => MyStorePage(),
      '/halaman_akun':(context) => AccountPage(),
      '/splash_screen':(context) => SplashScreen(),
    }
    
  )
  );
}


