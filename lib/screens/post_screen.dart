import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/commons/colors_helpers.dart';
import 'package:new_assignment/providers/postprovider.dart';
import 'package:provider/provider.dart';

import '../commons/commontextformfeilds_widget.dart';
import '../providers/image_provider.dart';
import 'post_list_screen.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    final postprovider = Provider.of<Postprovider>(context);
    final imageProvider = Provider.of<ImageProviderModel>(context);

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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostShowScreen()));
                },
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
          imageProvider.image != null
              ? Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: FileImage(imageProvider.image!),
                          fit: BoxFit.cover)),
                )
              : GestureDetector(
                  onTap: () {
                    imageProvider.pickImage();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade100,
                        border:
                            Border.all(width: 1, color: Colors.grey.shade200)),
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
            hintText: "type something....",
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
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Tag People",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16)
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),SizedBox(height: 4,),
          Text("Share with",style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),),
          SizedBox(height: 4,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 11,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Friends",
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
             //followers
             SizedBox(width: 16,),
             Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 11,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Followers",
                    style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(height: 8,),
          TextFormField(
                      controller: postprovider.linkcontroller,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      inputFormatters: [
                        SingleSpaceFormatter(),
                        // FilteringTextInputFormatter.allow(RegExp("[a-z A-Z ]")),
                        LengthLimitingTextInputFormatter(100),
                       
                      ],
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.link,color: Colors.grey,),
                          isDense: true,
                          enabled: true, //<-- SEE HERE

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(color: Colors.grey)),
                          hintText: 'Share Your Link here...',
                          hintStyle: GoogleFonts.montserrat(
                              fontSize: 11,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide.none),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter link';
                        } 

                        return null;
                      }),
        ],
      ),
    );
  }
}
