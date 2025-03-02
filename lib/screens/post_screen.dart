import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_assignment/commons/colors_helpers.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
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
    );
  }
}
