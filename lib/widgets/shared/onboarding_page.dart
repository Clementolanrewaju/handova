import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handova/loginpage/login_page.dart';
import 'package:handova/widgets/custom_button_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Transform.scale(
                  scale: 0.4, child: Image.asset('images/Handova.png')),
            ),
            const SizedBox(
              height: 79,
            ),
            Image.asset('images/Onboard1.png'),
            Text(
              'Drivers App',
              style: GoogleFonts.cabin(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xff2290DF),
              ),
            ),
            const SizedBox(
              height: 136,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 37),
              child: CustomButton(
                color: const Color(0xff2290DF),
                onPressed: () {},
                title: 'New Driver',
                isLoading: _isLoading,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xffFFFFFF),
                ),
                radius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, right: 37),
              child: CustomButton(
                color: const Color(0xffFFFFFF),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                  );
                },
                title: 'Login',
                isLoading: _isLoading,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff232323),
                ),
                radius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xff2290DF), width: 2.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
