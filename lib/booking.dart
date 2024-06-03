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
          BookingPage(),
        ]),
      ),
    );
  }
}

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
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
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "assets/images/left_icon.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 59),
                      Container(
                        padding: const EdgeInsets.only(right: 104),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Booking Online',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 384,
                child: Container(
                  width: 355,
                  height: 387,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Opacity(
                          opacity: 0.70,
                          child: Container(
                            width: 355,
                            height: 387,
                            decoration: ShapeDecoration(
                              color: Color(0xFF73C583),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(21),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 21,
                        child: Container(
                          width: 304,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 61,
                        child: Container(
                          width: 304,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 101,
                        child: Container(
                          width: 304,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 141,
                        child: Container(
                          width: 304,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 181,
                        child: Container(
                          width: 304,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 221,
                        child: Container(
                          width: 304,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 150,
                        child: Text(
                          'Poli',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 138,
                        top: 341,
                        child: Container(
                          width: 79,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Color(0xFF40A578),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 190,
                        child: Text(
                          'Tanggal Periksa',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 230,
                        child: Text(
                          'Tanggal Periksa',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 261,
                        child: Container(
                          width: 304,
                          height: 29,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 270,
                        child: Text(
                          'Daerah yang diinginkan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 158,
                        top: 350,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 30,
                        child: Text(
                          'NIK',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 70,
                        child: Text(
                          'Nama Pasien',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 110,
                        child: Text(
                          'Nomor HP',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 304,
                        top: 147,
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage("assets/images/down_icon.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 188,
                child: Container(
                  width: 363,
                  height: 162,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 23,
                        top: 23,
                        child: Container(
                          width: 318,
                          height: 116,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "assets/images/ngumpul_dokter.jpg"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23,
                        top: 23,
                        child: Container(
                          width: 318,
                          height: 116,
                          decoration: ShapeDecoration(
                            color:
                                Colors.black.withOpacity(0.25999999046325684),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 60,
                        top: 88,
                        child: Text(
                          'Dapatkan promo booking\nonline, hanya hari ini !',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 350,
                child: Text(
                  'Isi sesuai data pribadimu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 109,
                child: Text(
                  'submit booking',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 140,
                top: 109,
                child: Text(
                  'pengecekan data',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 266,
                top: 109,
                child: Text(
                  'invoice booking',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 186,
                top: 132,
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFF006769),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 51,
                top: 132,
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFF006769),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 312,
                top: 132,
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: ShapeDecoration(
                    color: Color(0xFF006769),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
