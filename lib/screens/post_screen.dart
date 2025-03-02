import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/commons/colors_helpers.dart';
import 'package:new_assignment/providers/postprovider.dart';
import 'package:provider/provider.dart';

import '../commons/commontextformfeilds_widget.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    final postprovider = Provider.of<Postprovider>(context);

    return Scaffold(
      backgroundColor: AppColors.screenbackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appbackGroundColor,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        title: Text(
          "Select Photo",
          style: GoogleFonts.italianno(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.surfaceColor,
          ),
        ),
        titleSpacing: -15,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4089d8)),
                onPressed: () {},
                child: Text(
                  "Post",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.gpp_good_outlined,
                  color: Color(0xFFdb1e0c),
                )),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade100,
                  border: Border.all(width: 1, color: Colors.grey.shade200)),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Icon(
                Icons.photo,
                color: Colors.grey,
                size: 25,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFieldAuthentication(
            isread: true,
            controller: postprovider.messageEditTextController,
            maxLines: 7,
            minLines: 5,
            hintText: "type something",
            isPassword: false,
            maxlength: 300,
            isSuffixPressed: () {},
            isObscureText: false,
            typeOfRed: <TextInputFormatter>[
              // FilteringTextInputFormatter.deny(RegExp("[ ]")),
              SingleSpaceFormatter(),
              FilteringTextInputFormatter.allow(
                  RegExp("[0-9, A-Z, a-z,@,,,.,!,?,%,\$,&,#,*]")),
              LengthLimitingTextInputFormatter(300),
            ],
            validator: (value) {
              // if (value!.isEmpty) {
              //   return 'Please enter message';
              // } else if (value.length < 3) {
              //   return 'Please enter valid message';
              // }
              // return null;
            },
            isErrorText: false,
            isErrorTextString: "please enter Message",
            keyboardPopType: TextInputType.text,
            icontap: () {},
            isicon: false,
            passwordicon: Icons.visibility,
            lablename: 'Message',
            textCapitalization: TextCapitalization.sentences,
          ),
          SizedBox(height: 15,),
          Divider(thickness: 1,color: Colors.white,)
        ],
      ),
    );
  }
}
