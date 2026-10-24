import 'package:flutter/material.dart';

class IVOBaseTextField extends StatefulWidget 
{
  const IVOBaseTextField(
    {
      super.key,
      this.backgroundColor, 
      this.fontSize = 17.0,
      this.fontFamily = '.SF Pro Text',
      this.fontWeight = FontWeight.normal,
      this.textColor = Colors.black,
      this.placeholderColor = const Color.from(alpha: 1, red: 233.0/255.0, green: 233.0/255.0, blue: 233.0/255.0),
      this.padding = const EdgeInsets.fromLTRB(14, 15, 14, 15),
      this.margin = const EdgeInsets.all(0),
      this.borderRadius = 0,
      this.placeholder = "",
      this.editController,
      this.focusNode,
    }
  );

  final  Color? backgroundColor;
  final  double? fontSize;
  final  String? fontFamily;
  final  FontWeight? fontWeight;
  final  Color? textColor;
  final  Color? placeholderColor;
  final  EdgeInsetsGeometry? padding;
  final  EdgeInsetsGeometry? margin;
  final  String? placeholder;
  final  double  borderRadius;
  final  TextEditingController? editController;
  final FocusNode? focusNode;

  @override
  State<IVOBaseTextField> createState() => _IVOBaseTextFieldState();
}

class _IVOBaseTextFieldState extends State<IVOBaseTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius > 0 ? BorderRadius.circular(6) : null,
      ),
      child: TextField(
        controller: widget.editController,
        focusNode: widget.focusNode,
        cursorColor: widget.textColor,
        textAlign: TextAlign.left,
        obscuringCharacter: widget.placeholder ?? "",
        style: TextStyle(
          backgroundColor: null,
          color: widget.textColor,
          fontFamily: widget.fontFamily,
          fontWeight: widget.fontWeight,

        ),

      ),
    );
  }
}