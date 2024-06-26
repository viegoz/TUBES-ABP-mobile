import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mobile_app/invoice.dart';

class BookingDokter extends StatefulWidget {
  @override
  _BookingDokterState createState() => _BookingDokterState();
}

class _BookingDokterState extends State<BookingDokter> {
  TextEditingController nikController = TextEditingController();
  TextEditingController namaPasienController = TextEditingController();
  TextEditingController jenisPasienController = TextEditingController();
  TextEditingController nomorHPController = TextEditingController();
  TextEditingController dokterController = TextEditingController();
  TextEditingController poliController = TextEditingController();
  TextEditingController tanggalPeriksaController = TextEditingController();

  String _metodePembayaran = 'Cash';

  Future<void> submitBooking() async {
    final url = Uri.parse('http://localhost:3001/pasien');
    final bookingDetails = {
      'NIK': nikController.text,
      'Nama_Pasien': namaPasienController.text,
      'Jenis_Pasien': jenisPasienController.text,
      'Nomor_HP': nomorHPController.text,
      'Dokter': dokterController.text,
      'Poli': poliController.text,
      'Tanggal_Periksa': tanggalPeriksaController.text,
      'Metode_Pembayaran': _metodePembayaran,
    };

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(bookingDetails),
    );

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => InvoicePage(
                  bookingDetails: bookingDetails,
                )),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Gagal melakukan booking'),
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
        child: ListView(
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
            SizedBox(height: 20),
            Text(
              'Pilih Metode Pembayaran:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            ListTile(
              title: Text('Cash'),
              leading: Radio<String>(
                value: 'Cash',
                groupValue: _metodePembayaran,
                onChanged: (value) {
                  setState(() {
                    _metodePembayaran = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Transfer'),
              leading: Radio<String>(
                value: 'Insurance',
                groupValue: _metodePembayaran,
                onChanged: (value) {
                  setState(() {
                    _metodePembayaran = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text(
                'Total: Rp 70.000',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ]),
            SizedBox(height: 20),
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
