import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                UiHelper.CustomImage(img: "cart.png"),
                UiHelper.CustomText(
                  text: "Reordering will be easy",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                  fontfamily: "bold",
                ),
                UiHelper.CustomText(
                  text:
                      "Items you order will show up here so you can buy them again easily.",
                  color: Colors.black,
                  fontweight: FontWeight.w600,
                  fontsize: 13,
                  fontfamily: "bold",
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    UiHelper.CustomText(
                      text: "Bestsellers",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontsize: 18,
                      fontfamily: "bold",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Stack(
                      children: [
                        UiHelper.CustomImage(img: "milk.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Stack(
                      children: [
                        UiHelper.CustomImage(img: "potato.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),

                    Stack(
                      children: [
                        UiHelper.CustomImage(img: "tomato.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 95, left: 65),
                          child: UiHelper.CustomButton(() {}),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
