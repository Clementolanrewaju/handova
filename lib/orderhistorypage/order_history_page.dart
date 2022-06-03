import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handova/widgets/dims.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
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
        title: Text(
          'MY ORDERS',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: const Color(0xffCB9D30)),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const YBox(40),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Order',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color(0xff000000)),
                    ),
                    const YBox(16),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 118,
                      width: context.deviceWidth(),
                      decoration: BoxDecoration(
                        color: const Color(0xffE4E4E4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const YBox(10),
                          Row(
                            children: [
                              Text(
                                'N 2800',
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff000000)),
                              ),
                              XBox(context.deviceWidth() / 7),
                              Text(
                                '5.3km',
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff828282)),
                              ),
                            ],
                          ),
                          const YBox(14),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xff147DDE),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              XBox(context.deviceWidth() / 40),
                              Text(
                                'Ojota New Garage, Ikorodu Road',
                                style: GoogleFonts.cabin(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff000000)),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              )
                            ],
                          ),
                          const YBox(10),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xff50AD64),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              XBox(context.deviceWidth() / 40),
                              Text(
                                'House 8, ikate lekki, lagos island',
                                style: GoogleFonts.cabin(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff000000)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const YBox(12),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset('images/Accept.svg'),
                          const Spacer(),
                          SvgPicture.asset('images/Decline.svg'),
                        ],
                      ),
                    ),
                    const YBox(32),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 118,
                      width: context.deviceWidth(),
                      decoration: BoxDecoration(
                        color: const Color(0xffE4E4E4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const YBox(10),
                          Row(
                            children: [
                              Text(
                                'N 1600',
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff000000)),
                              ),
                              XBox(context.deviceWidth() / 7),
                              Text(
                                '8.3km',
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff828282)),
                              ),
                            ],
                          ),
                          const YBox(14),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xff50AD64),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              XBox(context.deviceWidth() / 40),
                              Text(
                                'Shop 9, Balogun, Ikeja Airport Road',
                                style: GoogleFonts.cabin(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff000000)),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              )
                            ],
                          ),
                          const YBox(10),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xff147DDE),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              XBox(context.deviceWidth() / 40),
                              Text(
                                'Ketu Tipper garage, Ikorodu road',
                                style: GoogleFonts.cabin(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff000000)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const YBox(12),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset('images/Accept.svg'),
                          const Spacer(),
                          SvgPicture.asset('images/Decline.svg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const YBox(34),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Active Order',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color(0xff000000)),
                    ),
                    const YBox(7),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '3:43PM',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: const Color(0xff5A5A5A)),
                      ),
                    ),
                    const YBox(5),
                    Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 118,
                      width: context.deviceWidth(),
                      decoration: BoxDecoration(
                        color: const Color(0xffCBF2CB),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const YBox(10),
                          RichText(
                              text: TextSpan(
                                  text: 'ORDER NO:',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: const Color(0xff282828)),
                                  children: [
                                TextSpan(
                                    text: '7373',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17,
                                        color: const Color(0xff282828)))
                              ])),
                          const YBox(14),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xff147DDE),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              XBox(context.deviceWidth() / 40),
                              Text(
                                '2, Allen Avenue, Toyin Roundabout, Ikeja',
                                style: GoogleFonts.cabin(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff000000)),
                              ),
                            ],
                          ),
                          const YBox(10),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: const Color(0xff50AD64),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              XBox(context.deviceWidth() / 40),
                              Text(
                                'Tipper Garage, Ketu Busstop, Ikd. Road',
                                style: GoogleFonts.cabin(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff000000)),
                              ),
                            ],
                          ),
                        ],
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
