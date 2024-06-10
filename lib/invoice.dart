import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  final Map<String, dynamic> bookingDetails;

  InvoicePage({required this.bookingDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice'),
        backgroundColor: Color(0xFF9AD4A6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Invoice',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text('NIK: ${bookingDetails['NIK']}'),
            Text('Nama Pasien: ${bookingDetails['Nama_Pasien']}'),
            Text('Jenis Pasien: ${bookingDetails['Jenis_Pasien']}'),
            Text('Nomor HP: ${bookingDetails['Nomor_HP']}'),
            Text('Dokter: ${bookingDetails['Dokter']}'),
            Text('Poli: ${bookingDetails['Poli']}'),
            Text('Tanggal Periksa: ${bookingDetails['Tanggal_Periksa']}'),
            Text('Metode Pembayaran: ${bookingDetails['Metode_Pembayaran']}'),
            SizedBox(height: 20),
            Text(
              'Total Harga: 70000 IDR',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
