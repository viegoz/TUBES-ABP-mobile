import 'package:flutter/material.dart';
import 'custom_navigation_bar.dart'; // Sesuaikan dengan lokasi file CustomNavigationBar.dart Anda
import 'home.dart'; // Sesuaikan dengan lokasi file home.dart Anda
import 'notifikasi.dart'; // Sesuaikan dengan lokasi file notifikasi.dart Anda
import 'profile.dart'; // Sesuaikan dengan lokasi file profile.dart Anda
import 'booking.dart';
import 'tanya_dokter.dart';
import 'jadwal_dokter.dart';
import 'login_page.dart'; // Tambahkan import ini
import 'signup.dart';
import 'invoice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Bar',
      initialRoute: '/', // Set initial route to LogInPage
      routes: {
        '/': (context) => LogInPage(), // Tambahkan rute ini untuk halaman login
        '/home': (context) => HomePageWithNavigationBar(),
        '/notifikasi': (context) => NotifPageWithNavigationBar(),
        '/profile': (context) => ProfilePageWithNavigationBar(),
        '/booking': (context) => BookingPage(),
        '/tanya_dokter': (context) => TanyaPage(),
        '/jadwal_dokter': (context) => JadwalPage(),
        '/signup': (context) => SignUpPage(),
        '/invoice': (context) => InvoicePage(),
      },
    );
  }
}

class HomePageWithNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomePage(),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: CustomNavigationBar(),
          ),
        ],
      ),
    );
  }
}

class NotifPageWithNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NotifPage(),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: CustomNavigationBar(),
          ),
        ],
      ),
    );
  }
}

class ProfilePageWithNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ProfilePage(),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: CustomNavigationBar(),
          ),
        ],
      ),
    );
  }
}
