import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.email});

  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          leading: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/user.png'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Diente user',
                style: TextStyle(
                  color: Color(0xFF1B2A57),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.notifications,
                color: Color(0xFF7CA0CA),
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset('images/logo.png'),
              const SizedBox(
                height: 180,
              ),
              Container(
                width: 375,
                height: 53,
                decoration: BoxDecoration(
                  color: const Color(0xFF7CA0CA),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'حجز موعد جديد',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 375,
                height: 53,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF7CA0CA)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'مراجعة معلومات الحالة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7CA0CA),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
