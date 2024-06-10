import 'package:flutter/material.dart';
import 'package:mobile_app/booking_dokter.dart';
import 'custom_navigation_bar.dart';
import 'home.dart';
import 'notifikasi.dart';
import 'profile.dart';
import 'booking.dart';
import 'tanya_dokter.dart';
import 'jadwal_dokter.dart';
import 'login_page.dart';
import 'signup.dart';
import 'invoice.dart';
import 'add_tanya.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Bar',
      initialRoute: '/',
      routes: {
        '/': (context) => LogInPage(), // Tambahkan rute ini untuk halaman login
        '/home': (context) => HomePageWithNavigationBar(),
        '/notifikasi': (context) => NotifPageWithNavigationBar(),
        '/profile': (context) => ProfilePageWithNavigationBar(),
        '/booking': (context) => BookingPage(),
        '/tanya_dokter': (context) => TanyaPage(),
        '/jadwal_dokter': (context) => JadwalDokter(),
        '/signup': (context) => SignUpPage(),
        '/bookingdokter': (context) => BookingDokter(),
        '/tanyadokter': (context) => ForumPost(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/invoice') {
          final bookingDetails = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(builder: (context) {
            return InvoicePage(bookingDetails: bookingDetails);
          });
        }
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
