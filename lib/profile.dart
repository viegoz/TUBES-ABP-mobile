import 'package:flutter/material.dart';
import 'custom_navigation_bar.dart'; // Sesuaikan dengan lokasi file CustomNavigationBar.dart Anda

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

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 390,
              height: 839,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 390,
                      padding: const EdgeInsets.only(
                        top: 42,
                        left: 12,
                        right: 20,
                        bottom: 16,
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFF9AD4A6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/left_icon.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 104),
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                              width: 28), // Placeholder to balance the space
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              'assets/images/profile_icon.png'), // Sesuaikan dengan lokasi gambar Anda
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Nama Pengguna',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 240,
                    right: 14,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Nama Lengkap'),
                          subtitle: Text('Nama Lengkap Pengguna'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Nomor Telepon'),
                          subtitle: Text('+62 123 4567 890'),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Alamat'),
                          subtitle: Text('Alamat Pengguna'),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Pengaturan Akun',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.lock),
                          title: Text('Ubah Kata Sandi'),
                          onTap: () {
                            // Tambahkan fungsi untuk mengubah kata sandi
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.logout),
                          title: Text('Keluar'),
                          onTap: () {
                            // Tambahkan fungsi untuk keluar dari akun
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
