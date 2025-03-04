import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../commons/colors_helpers.dart';
import '../providers/image_provider.dart';

class PostShowScreen extends StatefulWidget {
  const PostShowScreen({super.key});

  @override
  State<PostShowScreen> createState() => _PostShowScreenState();
}

class _PostShowScreenState extends State<PostShowScreen> {
  @override
  Widget build(BuildContext context) {
    final imageProvider = Provider.of<ImageProviderModel>(context);

    return Scaffold(
      backgroundColor: AppColors.screenbackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appbackGroundColor,
        leading: Icon(
          Icons.add_circle_outline,
          size: 18,
          color: const Color.fromARGB(255, 24, 10, 10),
        ),
        title: Text(
          "Harbo Leaf",
          style: GoogleFonts.italianno(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.surfaceColor,
          ),
        ),
        titleSpacing: -15,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 8, 8, 8)),
                onPressed: () {},
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,s
                  children: [
                    Text(
                      "Search",
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 16,
                      ),
                    )
                  ],
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
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        physics: ClampingScrollPhysics(),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF646875)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  "assets/images/download.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Harbo Leaf",
                              style: GoogleFonts.mulish(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("1d ago",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.67,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        // image: DecorationImage(image: FileImage(imageProvider.image!),fit: BoxFit.cover)

                        image: DecorationImage(
                            image: AssetImage("assets/images/stre.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                        color: Color(0xFF2a2211),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: imageProvider.likeOk,
                                    child: Icon(
                                        imageProvider.islike
                                            ? Icons.thumb_up_sharp
                                            : Icons.thumb_up_sharp,
                                        color: imageProvider.islike
                                            ? AppColors.likeColor
                                            : Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: imageProvider.isNotlike,
                                    child: Icon(
                                      imageProvider.isNotLike
                                          ? Icons.thumb_down
                                          : Icons.thumb_down_alt_outlined,
                                      color: imageProvider.isNotLike
                                          ? AppColors.likeColor
                                          : Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.chat_sharp, color: Colors.white),
                                ],
                              ),
                              Row(
                                children: [
                                  Card(
                                    color: AppColors.likeColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.link,
                                            color: Colors.white,
                                            size: 13,
                                          ),
                                          Text(
                                            "VIEW",
                                            style: GoogleFonts.poppins(
                                                fontSize: 8,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      String text =
                                          "Check out this post!"; // Message to share
                                      String url =
                                          "https://freeapi.hashnode.space/api-guide/apireference/getMyProfile1"; // Post link

                                      // Share directly to Telegram
                                      Share.share(
                                        "$text\n$url",
                                        subject: "Post from My App",
                                        sharePositionOrigin:
                                            Rect.fromLTWH(0, 0, 100, 100),
                                      );
                                    },
                                    child: Icon(Icons.telegram_outlined,
                                        color: AppColors.likeColor),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.more_vert, color: Colors.white),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
