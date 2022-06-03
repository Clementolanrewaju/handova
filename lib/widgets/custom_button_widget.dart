import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.title,
        this.style,
        this.radius,
        this.color,
        this.border,
      required this.isLoading})
      : super(key: key);
  final VoidCallback? onPressed;
  final String title;
  final TextStyle? style;
  final BorderRadius? radius;
  final Color? color;
  final Border? border;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: TextButton(
          onPressed: onPressed,
          child: isLoading
              ? const Center(
                  child: CupertinoActivityIndicator(
                      // color: Colors.white,
                      ),
                )
              : Center(
                  child: Text(title,
                  style:style ,)
                ),
        ),
        height: 53.0,
        width: 369,
        decoration: BoxDecoration(
          color: color,
          borderRadius: radius,
          border: border,
        ),
      ),
    );
  }
}
