import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/BG#1.jpg'), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 120, left: 20),
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              loginForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginForm(context) {
    return Container(
        margin: const EdgeInsets.only(top: 170),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign in'.toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(height: 50),
            // User name
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'User name...',
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            // Email
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Email...',
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            // Password
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Password...',
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Forgotten password',
                    style:  TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Create new account',
                    style:  TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),


          ],
        ));
  }
}
