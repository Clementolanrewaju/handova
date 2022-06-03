import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:handova/loginpage/login_page.dart';
import 'package:handova/orderhistorypage/order_history_page.dart';
import 'package:handova/provider/auth_provider/auth_provider.dart';
import 'package:handova/widgets/dims.dart';
import 'package:handova/widgets/services_button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  late AuthProvider authProvider;
  static final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 44),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 31, right: 44),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const YBox(50),
                          Row(
                            children: [
                              Text(
                                authProvider.loginResponse!.data.user.firstName,
                                style: GoogleFonts.cabin(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff282828)),
                              ),
                              const XBox(5),
                              Text(
                                authProvider.loginResponse!.data.user.lastName,
                                style: GoogleFonts.cabin(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff282828)),
                              ),
                            ],
                          ),
                          Text(
                            'RIDER ID: ${authProvider.loginResponse!.data.user.id.toString()}',
                            style: GoogleFonts.cabin(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff282828)),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset('images/profile.png'),
                    )
                  ],
                ),
              ),
              const YBox(40),
              const Divider(
                thickness: 2,
              ),
              const YBox(29),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const OrderHistoryPage(),
                      ),
                    );
                  },
                  child: const ServicesButton(
                    asset: 'images/history.png',
                    title: 'Orders History',
                  )),
              const YBox(35),
              const ServicesButton(
                asset: 'images/settings.png',
                title: 'Account Settings',
              ),
              const YBox(35),
              const ServicesButton(
                asset: 'images/inbox.png',
                title: 'Inbox',
              ),
              const YBox(35),
              const ServicesButton(
                asset: 'images/earning.png',
                title: 'Earnings',
              ),
              const YBox(35),
              const ServicesButton(
                asset: 'images/wallet.png',
                title: 'Wallet',
              ),
              const YBox(35),
              const ServicesButton(
                asset: 'images/Referals.png',
                title: 'Referrals',
              ),
              const YBox(35),
              const ServicesButton(
                  asset: 'images/Support.png', title: 'Support'),
              const YBox(50),
              Padding(
                padding: const EdgeInsets.only(left: 31, right: 44),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (
                              context,
                            ) =>
                                    const LoginPage()),
                            (route) => false);
                      },
                      child: Text(
                        'LOG OUT',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xffD03535)),
                      ),
                    ),
                    const Spacer(),
                    Image.asset('images/sos.png')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              indoorViewEnabled: true,
              myLocationButtonEnabled: true,
              mapToolbarEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned.fill(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 35,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const YBox(21),
                            Text(
                              'Hi, ${authProvider.loginResponse!.data.user.firstName},',
                              style: GoogleFonts.cabin(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff282828)),
                            ),
                            Text(
                              'You are offline',
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff282828)),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: SvgPicture.asset('images/GoOnline.svg'),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              ),
              top: 650,
            ),
            Positioned.fill(right: 275, child: Image.asset('images/Box.png')),
            Positioned.fill(
                bottom: context.deviceHeight() / 1.15,
                child: const TopWidgets()),
            Positioned.fill(
                right: -300,
                bottom: -250,
                child: Transform.scale(
                    scale: 0.08,
                    child: SvgPicture.asset('images/Navigator.svg')))
          ],
        ),
      ),
    );
  }
}

class TopWidgets extends StatelessWidget {
  const TopWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(builder: (context) {
          return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset('images/Drawer.svg'));
        }),
        const Spacer(),
        Container(
          height: 40,
          width: context.deviceWidth() / 4,
          decoration: BoxDecoration(
            color: const Color(0xff3C3C3C),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'N2800',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color(0xffFFFFFF)),
            ),
          ),
        ),
        const Spacer(),
        Transform.scale(scale: 0.8, child: Image.asset('images/Speaker.png'))
      ],
    );
  }
}
