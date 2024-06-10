import 'package:flutter/material.dart';
import 'home.dart';
import 'main.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogInPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: const Color(0xFFF5F5F5),
      child: Stack(
        children: [
          _buildLogoSection(size),
          _buildInputSection(size),
          _buildLoginButton(context, size),
        ],
      ),
    );
  }

  Widget _buildLogoSection(Size size) {
    return Positioned(
      left: 32,
      top: 28,
      child: Container(
        width: size.width - 64,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width - 64,
              height: 168,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 43),
            Text(
              'Log In',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputSection(Size size) {
    return Positioned(
      left: 12,
      top: size.height * 0.5,
      child: Container(
        width: size.width - 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInputLabel('Email/No handphone'),
            _buildInputField('apayadong@gmail.com'),
            const SizedBox(height: 15),
            _buildInputLabel('Password'),
            _buildInputField('********'),
          ],
        ),
      ),
    );
  }

  Widget _buildInputLabel(String label) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(String text) {
    return Container(
      width: double.infinity,
      height: 33,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF8B8B8B),
          fontSize: 18,
          fontStyle: FontStyle.italic,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context, Size size) {
    return Positioned(
      left: size.width * 0.25,
      top: size.height * 0.75,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFF9AD4A6),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 1,
                offset: Offset(2, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            'Login',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
