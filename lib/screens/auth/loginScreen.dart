import 'package:flutter/material.dart';
import '../home/homeScreen.dart';
import 'registerScreen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool _obscure = true; // show or hide password

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constrains) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Judul
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: Column(
                    children: [
                      Text(
                        'SISTEM INFORMASI AKADEMIK',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2DBAB1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Universitas Developer',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF2DBAB1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                Image.asset('assets/images/logo1.png', width: 226, height: 244),
                textLogin(),

                const SizedBox(height: 20),

                // Npm
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nomor Mahasiswa',
                    filled: true,
                    fillColor: Colors.grey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 10),

                // PASSWORD
                TextField(
                  obscureText: _obscure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.grey[50],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/password.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: IconButton(
                        icon: Icon(
                          _obscure ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey[400],
                        ),
                        onPressed: () {
                          setState(() {
                            _obscure = !_obscure;
                          });
                        },
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),

                const SizedBox(height: 12),

                // LOGIN BUTTON
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2DBAB1),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    minimumSize: Size(349, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Righteous',
                    ),
                  ),
                ),

                Transform.translate(
                  offset: Offset(0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // aksi lupa password
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Color(0xFF2DBAB1),
                        ),
                        child: const Text('Lupa password?'),
                      ),
                      const SizedBox(width: 70), // jarak antar tombol
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // transparan
                          elevation: 0, // tanpa bayangan
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          foregroundColor: const Color(0xFF2DBAB1),
                        ),
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ),

                hubAdmin(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class textLogin extends StatelessWidget {
  const textLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2DBAB1),
              fontFamily: 'Righteous',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class hubAdmin extends StatelessWidget {
  const hubAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 90),
      child: Transform.translate(
        offset: Offset(0, 0),
        child: Text(
          'Hubungi Admin',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2DBAB1),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
