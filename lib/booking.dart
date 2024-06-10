import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  TextEditingController nikController = TextEditingController();
  TextEditingController namaPasienController = TextEditingController();
  TextEditingController jenisPasienController = TextEditingController();
  TextEditingController nomorHPController = TextEditingController();
  TextEditingController dokterController = TextEditingController();
  TextEditingController poliController = TextEditingController();
  TextEditingController tanggalPeriksaController = TextEditingController();

  Future<void> submitBooking() async {
    final url = Uri.parse('http://localhost:3001/pasien');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'NIK': nikController.text,
        'Nama_Pasien': namaPasienController.text,
        'Jenis_Pasien': jenisPasienController.text,
        'Nomor_HP': nomorHPController.text,
        'Dokter': dokterController.text,
        'Poli': poliController.text,
        'Tanggal_Periksa': tanggalPeriksaController.text,
      }),
    );

    if (response.statusCode == 200) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Booking Berhasil'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to book'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Online'),
        backgroundColor: Color(0xFF9AD4A6),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Isi sesuai data pribadimu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nikController,
              decoration: InputDecoration(
                labelText: 'NIK',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: namaPasienController,
              decoration: InputDecoration(
                labelText: 'Nama Pasien',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nomorHPController,
              decoration: InputDecoration(
                labelText: 'Nomor HP',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: jenisPasienController,
              decoration: InputDecoration(
                labelText: 'Jenis Pasien',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: poliController,
              decoration: InputDecoration(
                labelText: 'Poli',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: dokterController,
              decoration: InputDecoration(
                labelText: 'Dokter',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: tanggalPeriksaController,
              decoration: InputDecoration(
                labelText: 'Tanggal Periksa',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: submitBooking,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
