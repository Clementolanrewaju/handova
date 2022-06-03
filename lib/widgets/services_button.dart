import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handova/widgets/dims.dart';


class ServicesButton extends StatelessWidget {
  const ServicesButton({Key? key,
    this.borderRadius,
    this.padding,
    required this.asset,
    required this.title,
  }) : super(key: key);
  final EdgeInsets? padding;
  final String title;
  final String asset;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(

        children: [
          Image.asset(asset),
          const Spacer(),
          Text(title,
            style:  GoogleFonts.inter(
                fontStyle: FontStyle.normal,
                color:const Color(0xff282828),
                fontSize: 17,
                fontWeight: FontWeight.w700
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}