import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_helpers.dart';

class Commontextformfeild extends StatelessWidget {
  final TextInputType keyboardPopType;
  final TextEditingController controller;
  final String hintText;
  final String labelname;
  final bool isPassword;
  final bool isObscureText;
  final VoidCallback isSuffixPressed;
  final List<TextInputFormatter>? typeOfRed;
  final ValueChanged onChangeVal;
  final bool isErrorText;
  final String isErrorTextString;
  final IconData iconspic;
  final int maxLines;
  final int minLines;
  final bool enabled;
  final VoidCallback icontap;
  final String passwordicon;
  final bool isicon;
  final FormFieldValidator validation;
  final Color suffexiconcolor;
  // final String prefiximage;
  // final bool preitem;

  // bool addInstructions;

  const Commontextformfeild(
      {Key? key,
      required this.controller,
      // required this.addInstructions,
      required this.maxLines,
      required this.minLines,
      required this.hintText,
      required this.isPassword,
      required this.isSuffixPressed,
      required this.isObscureText,
      required this.typeOfRed,
      required this.onChangeVal,
      required this.isErrorText,
      required this.isErrorTextString,
      required this.keyboardPopType,
      required this.icontap,
      required this.passwordicon,
      required this.isicon,
      required this.iconspic,
      required this.validation,
      required this.labelname,
      required this.suffexiconcolor,
      // required this.prefiximage,
      // required this.preitem,
      required this.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      enabled: enabled,

      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardPopType,
      textCapitalization: TextCapitalization.none,

      controller: controller,
      // readOnly: addInstructions,
      obscureText: isObscureText ? true : false,
      obscuringCharacter: "*",
      // "\u2022",
      cursorColor: AppColors.themeColor,
      inputFormatters: typeOfRed,
      style: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      cursorWidth: 1,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        // fillColor: Colors.grey.shade100,
        fillColor: Color(0xFFF0F2F3),

        hintText: hintText,
        errorText: isErrorText ? isErrorTextString : null,
        // prefixIcon: preitem
        //     ? Icon(
        //         iconspic,
        //         size: 15,
        //         color: appThemecolor,
        //       )
        //     : Padding(
        //         padding: const EdgeInsets.all(14),
        //         child: SvgPicture.asset(
        //           prefiximage,
        //           height: 16,
        //           color: appThemecolor,
        //         ),
        //       ),
        labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        // label: Text(
        //   labelname,
        //   style: const TextStyle(
        //       color: hintcolor, fontSize: 12, fontWeight: FontWeight.w500),
        // ),
        suffixIcon: GestureDetector(
            onTap: icontap,
            // () {
            //   setState(() {
            //     _showpass = !_showpass;
            //   });
            // },
            child: isicon
                ? Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(
                      passwordicon,
                      color: AppColors.themeColor,
                      height: 18,
                    ),
                  )
                // ? Icon(
                //     passwordicon,
                //     // _showpass ? Icons.visibility_off : Icons.visibility,
                //     color: AppColors.themeColor,
                //   )
                : const SizedBox(
                    height: 0,
                  )),

        hintStyle: GoogleFonts.rubik(
          textStyle: const TextStyle(
              color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
        ),
        // alignLabelWithHint: false,

        filled: true,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            // borderSide: BorderSide.none,
            borderSide: BorderSide(width: 1, color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            // borderSide: BorderSide.none,
            borderSide: BorderSide.none
            // color: bordercolor,

            // borderRadius: BorderRadius.circular(10)
            ),
        // filled: true,
        //  focusedBorder: InputBorder({BorderSide borderSide = BorderSide.none}),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,

          // borderRadius: BorderRadius.circular(10)
        ),
        //labelText: lablename,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
          // borderSide: const BorderSide(
          //   // color: bordercolor,
          //   width: 1,
          // ),
          // borderRadius: BorderRadius.circular(10)
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      ),
      onChanged: onChangeVal,
      validator: validation,
    );
  }
}

class CommontextfeildAuth extends StatelessWidget {
  final TextInputType keyboardPopType;
  final TextEditingController controller;
  final String hintText;
  final String labelname;
  final bool isPassword;
  // final bool isObscureText;
  final VoidCallback isSuffixPressed;
  final List<TextInputFormatter>? typeOfRed;
  final ValueChanged onChangeVal;
  final bool isErrorText;
  final String isErrorTextString;
  final IconData iconspic;
  final int maxLines;
  final int minLines;
  final bool enabled;
  final VoidCallback icontap;
  final String passwordicon;
  final bool isicon;
  final FormFieldValidator validation;
  final Color suffexiconcolor;
  // final String prefiximage;
  // final bool preitem;

  // bool addInstructions;

  const CommontextfeildAuth(
      {Key? key,
      required this.controller,
      // required this.addInstructions,
      required this.maxLines,
      required this.minLines,
      required this.hintText,
      required this.isPassword,
      required this.isSuffixPressed,
      // required this.isObscureText,
      required this.typeOfRed,
      required this.onChangeVal,
      required this.isErrorText,
      required this.isErrorTextString,
      required this.keyboardPopType,
      required this.icontap,
      required this.passwordicon,
      required this.isicon,
      required this.iconspic,
      required this.validation,
      required this.labelname,
      required this.suffexiconcolor,
      // required this.prefiximage,
      // required this.preitem,
      required this.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      enabled: enabled,

      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardPopType,
      textCapitalization: TextCapitalization.none,

      controller: controller,
      // readOnly: addInstructions,
      // obscureText: isObscureText ? true : false,
      obscuringCharacter: "*",
      // "\u2022",
      cursorColor: AppColors.themeColor,
      inputFormatters: typeOfRed,
      style: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      cursorWidth: 1,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        fillColor: Color(0xFFF0F2F3),

        hintText: hintText,
        errorText: isErrorText ? isErrorTextString : null,
        // prefixIcon: preitem
        //     ? Icon(
        //         iconspic,
        //         size: 15,
        //         color: appThemecolor,
        //       )
        //     : Padding(
        //         padding: const EdgeInsets.all(14),
        //         child: SvgPicture.asset(
        //           prefiximage,
        //           height: 16,
        //           color: appThemecolor,
        //         ),
        //       ),
        labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        // label: Text(
        //   labelname,
        //   style: const TextStyle(
        //       color: hintcolor, fontSize: 12, fontWeight: FontWeight.w500),
        // ),
        // suffixIcon: GestureDetector(
        //     onTap: icontap,
        //     // () {
        //     //   setState(() {
        //     //     _showpass = !_showpass;
        //     //   });
        //     // },
        //     child: isicon
        //         ? Padding(
        //             padding: const EdgeInsets.all(16),
        //             child: Image.asset(
        //               passwordicon,
        //               color: AppColors.themeColor,
        //               height: 18,
        //             ),
        //           )
        //         // ? Icon(
        //         //     passwordicon,
        //         //     // _showpass ? Icons.visibility_off : Icons.visibility,
        //         //     color: AppColors.themeColor,
        //         //   )
        //         : const SizedBox(
        //             height: 0,
        //           )),

        hintStyle: GoogleFonts.rubik(
          textStyle: const TextStyle(
              color: Color(0xFF686868),
              fontSize: 13,
              fontWeight: FontWeight.w400),
        ),
        // alignLabelWithHint: false,

        filled: true,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            // borderSide: BorderSide.none,
            borderSide: BorderSide(width: 1, color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            // borderSide: BorderSide.none,
            borderSide: BorderSide.none
            // color: bordercolor,

            // borderRadius: BorderRadius.circular(10)
            ),
        // filled: true,
        //  focusedBorder: InputBorder({BorderSide borderSide = BorderSide.none}),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,

          // borderRadius: BorderRadius.circular(10)
        ),
        //labelText: lablename,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
          // borderSide: const BorderSide(
          //   // color: bordercolor,
          //   width: 1,
          // ),
          // borderRadius: BorderRadius.circular(10)
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      ),
      onChanged: onChangeVal,
      validator: validation,
    );
  }
}

class TextFieldAuthentication extends StatelessWidget {
  final TextInputType keyboardPopType;
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final bool isObscureText;
  final VoidCallback isSuffixPressed;
  final List<TextInputFormatter>? typeOfRed;
  final TextCapitalization textCapitalization;
  // final ValueChanged onChangeVal;
  final bool isErrorText;
  final String isErrorTextString;
  int maxLines;
  int minLines;
  final VoidCallback icontap;
  final IconData passwordicon;
  final bool isicon;
  final FormFieldValidator validator;
  final String lablename;
  final EdgeInsets? contentPadding;
  final bool isread;
  int? maxlength;
  // final VoidCallback feildtap;

  // bool addInstructions;
  TextFieldAuthentication({
    Key? key,
    required this.controller,
    // required this.addInstructions,
    required this.maxLines,
    required this.minLines,
    required this.hintText,
    required this.isPassword,
    required this.isSuffixPressed,
    required this.isObscureText,
    required this.typeOfRed,
    // required this.onChangeVal,
    required this.isErrorText,
    required this.isErrorTextString,
    required this.keyboardPopType,
    required this.icontap,
    required this.passwordicon,
    required this.isicon,
    required this.validator,
    required this.lablename,
    this.contentPadding,
    this.maxlength,
    required this.isread,
    required this.textCapitalization,

    //  required this.feildtap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // maxLength: maxlength,
      // onTap: feildtap,
      enabled: isread,
      keyboardType: keyboardPopType,
      controller: controller,
      textAlign: TextAlign.start,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // readOnly: addInstructions,
      obscureText: isObscureText ? true : false,
      obscuringCharacter: "*",
      cursorColor: AppColors.themeColor,
      inputFormatters: typeOfRed,
      textAlignVertical: TextAlignVertical.top,
      textInputAction: TextInputAction.next,
      textCapitalization: textCapitalization,

      style: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      cursorWidth: 1,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        // focusedBorder: const UnderlineInputBorder(
        //     borderSide: BorderSide(color: appThemecolor)),

        fillColor: AppColors.screenbackgroundColor,

        hintText: hintText,
        alignLabelWithHint: true,
        errorText: isErrorText ? isErrorTextString : null,

        // prefixIcon: Padding(
        //   padding: const EdgeInsets.all(14),
        //   child: SvgPicture.asset(
        //     prefiximage,
        //     height: 10,
        //     color: appThemecolor,
        //   ),
        // ),

        // label: Text('Name',style: TextStyle(color: text_color,fontSize: 15),),
        // suffixIcon: GestureDetector(
        //   onTap: icontap,
        //   // () {
        //   //   setState(() {
        //   //     _showpass = !_showpass;
        //   //   });
        //   // },
        //   child: isicon
        //       ? Icon(
        //           passwordicon,
        //           // _showpass ? Icons.visibility_off : Icons.visibility,
        //           color: Colors.grey,
        //         )
        //       : const SizedBox(
        //           height: 0,
        //         ),
        // ),

        hintStyle: TextStyle(
            color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w300),

        //  GoogleFonts.openSans(
        //   textStyle: const TextStyle(
        //       color: hinttext, fontSize: 12, fontWeight: FontWeight.w400),
        // ),
        // alignLabelWithHint: false,

        filled: true,

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide:BorderSide.none
          
           ,
        ),

        //  focusedBorder: InputBorder({BorderSide borderSide = BorderSide.none}),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          // borderSide: BorderSide(
          //   color: AppColors.screenbackgroundColor,
          //   width: 1,
          // ),
          borderSide:BorderSide.none

        ),
        // labelText: lablename,
        labelStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400)),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide:BorderSide.none

          // borderSide: BorderSide(
          //   color: AppColors.themeColor,
          //   width: 1,
          // ),
        ),
        // contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        contentPadding: contentPadding ?? EdgeInsets.all(15),
      ),

      validator: validator,
    );
  }
}

//space formatter
class SingleSpaceFormatter extends TextInputFormatter {
  bool _isPreviousSpace = false;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text == ' ') {
      // If only a space is entered, keep the previous value
      return oldValue;
    }

    // Allow a single space only if not preceded by another space
    if (newValue.text == ' ' && _isPreviousSpace) {
      return TextEditingValue(
        text: oldValue.text,
        selection: TextSelection.collapsed(offset: oldValue.text.length),
      );
    }

    _isPreviousSpace = newValue.text.endsWith(' ');
    return newValue;
  }
}
