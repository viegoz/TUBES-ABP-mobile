import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          JadwalPage(),
        ]),
      ),
    );
  }
}

class JadwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: 42,
                    left: 12,
                    right: 90,
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
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/left_icon.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 59),
                      Expanded(
                        child: Text(
                          'Jadwal Dokter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 56,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          width: 31,
                          height: 31,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/search_icon.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'cari dokter yang kamu mau',
                          style: TextStyle(
                            color: Color(0xFFBBBBBB),
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                doctorRow(
                  context,
                  "assets/images/stevanie.png",
                  "Dr. Stevanie Mily",
                  "Poli Umum",
                  "Umum",
                  "09:00 - 16:00, senin - jumat",
                  "assets/images/william.png",
                  "Dr. William Doh",
                  "Bedah",
                  "Bedah Plastik",
                  "09:00 - 16:00, senin - kamis",
                ),
                const SizedBox(height: 20),
                doctorRow(
                  context,
                  "assets/images/syifa.png",
                  "Dr. Syifa Zahra",
                  "Psikologi",
                  "Psikolog",
                  "10:00 - 17:00, selasa - jumat",
                  "assets/images/bob.png",
                  "Dr. Bob Julian",
                  "Pediatric",
                  "Anak",
                  "08:00 - 15:00, senin - jumat",
                ),
                const SizedBox(height: 20),
                doctorRow(
                  context,
                  "assets/images/emily.png",
                  "Dr. Emily Latus",
                  "Poli Saraf",
                  "Saraf",
                  "08:00 - 14:00, rabu - sabtu",
                  "assets/images/julio.png",
                  "Dr. Julio Mars",
                  "Poli Bedah",
                  "Bedah Umum",
                  "09:00 - 16:00, senin - jumat",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget doctorRow(
    BuildContext context,
    String imagePath1,
    String name1,
    String unit1,
    String specialty1,
    String schedule1,
    String imagePath2,
    String name2,
    String unit2,
    String specialty2,
    String schedule2,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: doctorCard(
                context, imagePath1, name1, unit1, specialty1, schedule1),
          ),
          const SizedBox(width: 28),
          Expanded(
            child: doctorCard(
                context, imagePath2, name2, unit2, specialty2, schedule2),
          ),
        ],
      ),
    );
  }

  Widget doctorCard(BuildContext context, String imagePath, String name,
      String unit, String specialty, String schedule) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: ShapeDecoration(
        color: Color(0xFF9AD4A6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 140,
            height: 146,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'Unit : $unit',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'Spesialis : $specialty',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'Jadwal : $schedule',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: ShapeDecoration(
              color: Color(0xFF40A578),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Text(
              'Booking',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
