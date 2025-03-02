import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/providers/loginprovider.dart';
import 'package:provider/provider.dart';

import '../commons/colors_helpers.dart';
import '../commons/commontextformfeilds_widget.dart';
import '../commons/commontexts.dart';
import 'post_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final loginNotifier = Provider.of<Loginprovider>(context);

    return Scaffold(
        body: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: [
          Column(
            children: [
              SizedBox(height: 18),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: 350,
                width: 278,
              ),
              SizedBox(height: 28),
              const CommonHeadingText(
                textalignment: TextAlign.center,
                text: 'Login to your Account',
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2D375B),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Please Login to your Account with the\nEmail ID and Password",
                textAlign: TextAlign.center,
                style: GoogleFonts.mulish(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF898989)),
              ),
              const SizedBox(height: 20),
            ],
          ),

          // Email label and TextField

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CommonHeadingText(
                        textalignment: TextAlign.start,
                        text: 'Email ID',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textHeadingColor,
                      ),

                      const SizedBox(height: 10),

                      Commontextformfeild(
                        controller: loginNotifier.emailcontroller,
                        maxLines: 1,
                        minLines: 1,
                        hintText: "",
                        isPassword: false,
                        isSuffixPressed: () {},
                        isObscureText: false,
                        typeOfRed: <TextInputFormatter>[
                          // FilteringTextInputFormatter.deny(RegExp("[ ]")),
                          SingleSpaceFormatter(), // Custom formatter to allow only one middle space
                          // FilteringTextInputFormatter.deny(RegExp(r'^\s')),
                          // FilteringTextInputFormatter.allow(RegExp(
                          //     r'[a-z,A-Z,.,@,0-9\s]')), // Allow letters,
                          LengthLimitingTextInputFormatter(200),
                        ],
                        isErrorText: false,
                        isErrorTextString: "Please enter email",
                        keyboardPopType: TextInputType.emailAddress,
                        icontap: () {},
                        isicon: true,
                        passwordicon: "assets/icons/email_all.png",
                        iconspic: Icons.email_outlined,
                        validation: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Email Id Can\'t be empty';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(text)) {
                            return 'Please enter valid email id';
                          } else {
                            return null;
                          }
                        },

                        labelname: '',
                        suffexiconcolor: Colors.grey.shade400,
                        // preitem: false,

                        enabled: true,
                        onChangeVal: (value) {},
                      ),
                      const SizedBox(height: 20),
                      // Password label and TextField
                      const CommonHeadingText(
                        textalignment: TextAlign.start,
                        text: 'Password',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textHeadingColor,
                      ),
                      const SizedBox(height: 10),
                      Commontextformfeild(
                        controller: loginNotifier.passwordcontroller,
                        maxLines: 1,
                        minLines: 1,
                        hintText: "",
                        isPassword: true,
                        isSuffixPressed: () {},
                        isObscureText: !loginNotifier.isshow,
                        typeOfRed: <TextInputFormatter>[
                          // FilteringTextInputFormatter.deny(RegExp("[ ]")),
                          // SingleSpaceFormatter(), // Custom formatter to allow only one middle space
                          FilteringTextInputFormatter.deny(RegExp(r'^\s')),
                          // FilteringTextInputFormatter.allow(
                          //     RegExp(r'[a-zA-Z@0-9\s]')), // Allow letters,
                          // LengthLimitingTextInputFormatter(100),
                        ],
                        isErrorText: false,
                        isErrorTextString: "Please enter password",
                        keyboardPopType: TextInputType.emailAddress,
                        icontap: () {
                          // loginNotifier.isshow =
                          // !loginNotifier.isshow;
                          loginNotifier.passwordSet();
                        },
                        isicon: true,
                        passwordicon: loginNotifier.isshow
                            ? "assets/icons/eye_open_new.png"
                            : "assets/icons/close_new_eye.png",
                        iconspic: Icons.email_outlined,
                        validation: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          } else if (value.contains(" ")) {
                            return 'Spaces not allowed';
                          } else if (value.length < 8) {
                            return 'Please enter valid password';
                          }

                          return null;
                        },
                        labelname: '',
                        suffexiconcolor: Colors.grey.shade400,
                        // preitem: false,

                        enabled: true,
                        onChangeVal: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 6),
              // Forgot Password text
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: TextButton(
                    onPressed: () {
                      // _forgotPassController
                      //     .forgotemailcontroller.text = "";

                      // Get.toNamed(AppRoutes.forgotPassword);
                    },
                    child: const CommonHeadingText(
                        text: 'Forgot Password?',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2D375B)),
                  ),
                ),
              ),
              // const SizedBox(height: 10),
              // Login Now button

              SizedBox(
                width: double.infinity,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: ElevatedButton(
                      onPressed: () {
                        print("jfdksfjkdsf");
                        if (formKey.currentState!
                            .validate()) {

Navigator.push(context, MaterialPageRoute(builder: (context)=>PostScreen()));                        }
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.themeColor,
                        minimumSize: const Size(200, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Slightly rounded corners
                        ), // Set your desired width and height here
                      ),
                      child: const CommonHeadingText(
                        text: 'Login Now',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
            ],
          )
        ]));
  }
}
