import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:handova/widgets/theme/app_colors.dart';


class CustomTextField extends StatefulWidget {
  final String? hint;
  final ValueChanged<String>? onChanged;
  final bool headerLess;
  final TextEditingController? textEditingController;
  final int lines;
  final bool readOnly;
  final bool obscureText;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? suffix;
  final double? height;
  final double? width;
  final TextInputAction textInputAction;
  final Border? border;
  final Color? color;
  final Color? backgroundColor;
  final AppColor? appColor;
  final TextStyle? style;
  final String? prefixText;

  const CustomTextField({
    Key? key,
    this.appColor,
    this.hint,
    this.style,
    this.onChanged,
    this.headerLess = false,
    this.textEditingController,
    this.lines = 1,
    this.readOnly = false,
    this.obscureText = false,
    this.prefix,
    this.height,
    this.width,
    this.keyboardType,
    this.inputFormatters,
    this.focusNode,
    this.color,
    this.suffix,
    this.textInputAction = TextInputAction.done,
    this.border,
    this.backgroundColor,
    this.prefixText,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    _node = widget.focusNode ?? FocusNode();
    super.initState();
  }

  FocusNode? _node;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_node);
      },
      child: Row(
        children: [
          widget.prefix ?? const SizedBox(width: 15),
          Expanded(
            child: TextFormField(
              focusNode: _node,
              cursorColor: widget.appColor?.primaryColor,
              readOnly: widget.readOnly,
              onChanged: widget.onChanged,
              textInputAction: widget.textInputAction,
              obscureText: widget.obscureText,
              keyboardType: widget.keyboardType,
              controller: widget.textEditingController,
              inputFormatters: widget.inputFormatters,
              maxLines: widget.obscureText ? 1 : (widget.lines),
              minLines: widget.obscureText ? 1 : (widget.lines),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: widget.appColor?.textColor,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                focusColor: Colors.black,
                prefixText: widget.prefixText,
                prefixStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: widget.appColor?.textColor,
                  fontSize: 14,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                labelStyle: TextStyle(
                  color: Color(0xff787878)
                ),
                hintText: widget.hint,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Color(0xff787878)
                ),
              ),
            ),
          ),
          widget.suffix ?? const SizedBox()
        ],
      ),
    );
  }
}
