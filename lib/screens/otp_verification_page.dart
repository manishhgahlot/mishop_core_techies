import 'package:core_techies/screens/btm_bar.dart';
import 'package:flutter/material.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({super.key});

  @override
  OTPVerificationPageState createState() => OTPVerificationPageState();
}

class OTPVerificationPageState extends State<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(36),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: 260,
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     fit: BoxFit.cover,
                //     image: AssetImage('assets/image/logo_circle.png'),
                //   ),
                // ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 20.5,
                        right: 75,
                      ),
                      padding: const EdgeInsets.fromLTRB(9, 8, 7, 6),
                      width: double.maxFinite,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 140,
                            top: 5,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              width: 66,
                              height: 66,
                              child: Image.asset(
                                'assets/image/logo.png',
                                width: 66,
                                height: 66,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 47,
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                              height: 1.1725,
                              color: Color(0xFFFFCC00),
                            ),
                            children: [
                              TextSpan(text: 'mi'),
                              TextSpan(
                                text: 'shop',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800,
                                  height: 1.1725,
                                  color: Color(0xFF00A489),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, bottom: 22),
                constraints: const BoxConstraints(maxWidth: 213),
                child: const Text(
                  'Enter OTP received \nin messages',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.1725,
                    color: Color(0xFF193D4A),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, bottom: 30),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.171875,
                      color: Color(0xFF818082),
                    ),
                    children: [
                      TextSpan(
                        text: '6 Digits code sent to ',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.1725,
                          color: Color(0xFF818082),
                        ),
                      ),
                      TextSpan(
                        text: '+91 9928 1234 00',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.1725,
                          color: Color(0xFF00A489),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40),
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.3125,
                    color: Color(0xFF00A489),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 1, 47),
                  width: 349,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFD5D5D5)),
                  ),
                  child: const Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      // maxLength: 6,
                      style:
                          TextStyle(fontSize: 15), // Adjust font size as needed
                      decoration: InputDecoration(
                        hintText: 'Enter OTP',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        border:
                            InputBorder.none, // Remove border for the TextField
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                height: 90,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ButtomBarScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00A489),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.1725,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
