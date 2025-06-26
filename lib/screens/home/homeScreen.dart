import 'package:flutter/material.dart';
import '../e-learning/testing.dart';
import '../../widget/wrapper.dart';
import '../krs/krsScreen.dart';
import '../khs/khsScreen.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2DB4B1),

        body: Wrapper(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('halaman simulasi saja'),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Testing()),
                  );
                },
                child: const Text(' Testing and Implementation'),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Krs()),
                  );
                },
                child: const Text(' KRS'),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Khs()),
                  );
                },
                child: const Text(' KHS '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
