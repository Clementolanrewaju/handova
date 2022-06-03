import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handova/homepage/home_page.dart';
import 'package:handova/provider/auth_provider/auth_provider.dart';
import 'package:handova/widgets/custom_text_field.dart';
import 'package:handova/widgets/dims.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  late AuthProvider authProvider;
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Transform.scale(
            scale: 0.5,
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('images/exit.png'))),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const YBox(80),
                  Text(
                    'Enter Phone Number',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      color: const Color(0xff0A0A0A),
                    ),
                  ),
                  const YBox(8),
                  Text(
                    'Login with your registered phone\nnumber.',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color(0xff0A0A0A),
                    ),
                  ),
                  const YBox(46),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 55,
                          width: context.deviceWidth() / 4,
                          child: Row(
                            children: [
                              Text(
                                'NG(+234)',
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff0A0A0A)),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomTextField(
                          hint: 'Phone Number',
                          width: context.deviceWidth() / 1.2,
                          backgroundColor: Colors.white,
                          border: Border.all(width: 2.5),
                          textEditingController: number,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ],
                  ),
                  const YBox(27),
                  CustomTextField(
                    obscureText: true,
                    hint: 'Enter Password',
                    width: context.deviceWidth(),
                    backgroundColor: Colors.white,
                    border: Border.all(width: 1),
                    textEditingController: password,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.send,
                  ),
                  const YBox(53),
                  CustomButton(
                    color: const Color(0xff2290DF),
                    onPressed: () {
                      login();
                    },
                    title: 'Login',
                    isLoading: _isLoading,
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffFFFFFF),
                    ),
                    radius: BorderRadius.circular(15),
                  ),
                  const YBox(45),
                  Center(
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: const Color(0xff000000)),
                    ),
                  ),
                  const YBox(62),
                  Center(child: Image.asset('images/fingerprint.png'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() async {
    try {
      setState(() {
        _isLoading = true;
      });
      await authProvider.login(number: number.text, password: password.text);
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (
            context,
          ) =>
                  const HomePage()),
          (route) => false);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(authProvider.loginResponse!.message)));
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Check Your internet connection or credentials')));
      setState(() {
        _isLoading = false;
      });
    }
  }
}
