import 'package:flutter/material.dart';

// /////// colors section ///////////
const appColor =  Color(0xff0F6C00);
const appColor2 = Color(0xff052600);
// /////// custom text ///////////
class CustomText extends StatelessWidget {
  String? text;
  final Color? color;
  final dynamic fontSize;
  final fontWeight;
  final TextAlign? textAlign;
  final dynamic letterSpacing;
  final dynamic height;
  final TextOverflow? overflow;
  final dynamic maxline;
  CustomText(
      {super.key,
      @required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.letterSpacing,
      this.height,
      this.maxline = null,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      maxLines: maxline,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: "Inter",
          height: height,
          color: color ?? Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
          overflow: overflow,
          letterSpacing: letterSpacing),
    );
  }
}
// /////// custom textfield ///////////

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;

  final String? hint_text;
  final bool? autofocus;
  final focusNode;
  final contentPadding;
  final  keyboardType;

  CustomTextField({
    super.key,
    required this.controller,
    this.hint_text,
    this.autofocus,
    this.focusNode,
    this.contentPadding,
    this.keyboardType
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), boxShadow: [
        BoxShadow(
            color: Colors.grey.shade400, offset: Offset(0, 0.3), blurRadius: 2),
      ]),
      child: TextField(
        keyboardType:widget.keyboardType,
        controller: widget.controller,
        autofocus: widget.autofocus ?? false,
        focusNode: widget.focusNode,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            hoverColor: Colors.white,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: widget.hint_text,
            hintStyle: TextStyle(
                )),
      ),
    );
  }
}
/////////// screen navigation //////////
screenNavigation(screen, context) {
  return Navigator.of(context).push(
      CupertinoPageRoute(fullscreenDialog: true, builder: (context) => screen));
}s} 



