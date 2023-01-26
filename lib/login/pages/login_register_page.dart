import 'package:flutter/material.dart';

import '../../core/background/background_paint.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  bool isRegister = false;
  Animation<double>? animation;
  AnimationController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Stack(
        children: [
          CustomPaint(
            painter: BackgroundPaint(isRegister: isRegister),
            size: const Size(double.infinity, double.infinity),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (isRegister)
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(48),
                            bottomLeft: Radius.circular(48),
                          ),
                        ),
                      ),
                      onPressed: () => setState(() => isRegister = false),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            right: 16, top: 16, bottom: 16, left: 24),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 85, 85, 85),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        isRegister ? 'Register' : 'Login',
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 28),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  key: const ValueKey('form-name-key'),
                                  decoration: const InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 228, 228, 228),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(80),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.person),
                                    label: Text('Username'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 228, 228, 228),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(80),
                                      ),
                                    ),
                                  ),
                                ),
                                if (isRegister)
                                  TextFormField(
                                    key: const ValueKey('form-mail-key'),
                                    decoration: const InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 228, 228, 228),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0),
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      prefixIcon: Icon(Icons.alternate_email),
                                      label: Text('Email'),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 228, 228, 228),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0),
                                        ),
                                      ),
                                    ),
                                  ),
                                TextFormField(
                                  key: const ValueKey('form-password-key'),
                                  decoration: const InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 228, 228, 228),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(80),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.lock),
                                    label: Text('Password'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 228, 228, 228),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(80),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.blue,
                          onPressed: () {},
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 23, 194, 66),
                                Color.fromARGB(255, 132, 255, 193),
                              ]),
                            ),
                            child: Icon(
                              isRegister
                                  ? Icons.check
                                  : Icons.keyboard_arrow_right,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                    if (!isRegister)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(48),
                              bottomRight: Radius.circular(48),
                            ),
                          ),
                        ),
                        onPressed: () => setState(() => isRegister = true),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              right: 16, top: 16, bottom: 16, left: 8),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Color.fromARGB(255, 240, 76, 0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
