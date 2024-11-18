import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(fit: StackFit.expand, children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(
                    'Hello there',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'lib/images/hand-wave.png',
                    width: 20,
                  )
                ]),
                SizedBox(
                  height: 20,
                ),
                Text('Please enter your email and password to sign in.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 14,
                    )),
                Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Email', hintText: 'Email'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password', hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      value: false,
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 14),
                    )
                  ]),
                  SizedBox(height: 8),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(height: 16),
                  Text('Forgot password?',
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('or continue with',
                            style: TextStyle(
                                color: Colors.black38,
                                fontFamily: 'Roboto',
                                fontSize: 16)),
                      ),
                      Expanded(
                        child: Divider(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'lib/images/google.png',
                          width: 30,
                          height: 30,
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'lib/images/apple.png',
                          width: 30,
                          height: 30,
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'lib/images/facebook.png',
                          width: 30,
                          height: 30,
                        ),
                      ))
                    ],
                  ),
                  SizedBox(height: 30),
                  Positioned(
                      bottom: 10,
                      left: 16,
                      right: 16,
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              textStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: Colors.white),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(color: Colors.white),
                            )),
                      ))
                ])
              ],
            ),
          ),
        ]));
  }
}
