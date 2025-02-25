import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiHelper.CustomText(
                        text: "Blinkit in",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 13,
                        fontfamily: "bold",
                      ),
                      Row(
                        children: [
                          UiHelper.CustomText(
                            text: "16 minutes",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          UiHelper.CustomText(
                            text: "HOME - ",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 13,
                            fontfamily: "bold",
                          ),
                          UiHelper.CustomText(
                            text: "Rana Yograj, Maharashtra",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 13,
                            fontfamily: "bold",
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      SizedBox(height: 10),
                      UiHelper.CustomTextField(controller: searchController),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 30),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          UiHelper.CustomText(
            text: "Print Store",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 35,
            fontfamily: "bold",
          ),
          UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: Colors.black54,
            fontweight: FontWeight.normal,
            fontsize: 15,
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiHelper.CustomText(
                          text: "Documents",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 17,
                          fontfamily: "bold",
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            UiHelper.CustomImage(img: "star.png"),
                            SizedBox(width: 5),
                            UiHelper.CustomText(
                              text: "Price starting at rs 3/page",
                              color: Color(0xFF9C9C9C),
                              fontweight: FontWeight.normal,
                              fontsize: 14,
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            UiHelper.CustomImage(img: "star.png"),
                            SizedBox(width: 5),
                            UiHelper.CustomText(
                              text: "Paper quality: 70 GSM",
                              color: Color(0xFF9C9C9C),
                              fontweight: FontWeight.normal,
                              fontsize: 14,
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            UiHelper.CustomImage(img: "star.png"),
                            SizedBox(width: 5),
                            UiHelper.CustomText(
                              text: "Single side prints",
                              color: Color(0xFF9C9C9C),
                              fontweight: FontWeight.normal,
                              fontsize: 14,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF27AF34),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: UiHelper.CustomText(
                              text: "Upload Files",
                              color: Colors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 16,
                              fontfamily: "bold",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    UiHelper.CustomImage(img: "document.png"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
