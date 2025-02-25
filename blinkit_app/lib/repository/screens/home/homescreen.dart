import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_app/repository/widgets/itemslist.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali \n Gifts"},
    {"img": "image 52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image 53.png", "text": "Home \n & Living"},
  ];
  var categroy = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden  Candle"},
    {"img": "image 57.png", "text": "Royal Gulab  Bikano"},
    {"img": "image 63.png", "text": "Golden Glass\n Wooden  Candle"},
  ];
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                color: Color(0XFFEC0505),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiHelper.CustomText(
                        text: "Blinkit in",
                        color: Colors.white,
                        fontweight: FontWeight.bold,
                        fontsize: 13,
                        fontfamily: "bold",
                      ),
                      Row(
                        children: [
                          UiHelper.CustomText(
                            text: "16 minutes",
                            color: Colors.white,
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
                            color: Colors.white,
                            fontweight: FontWeight.bold,
                            fontsize: 13,
                            fontfamily: "bold",
                          ),
                          UiHelper.CustomText(
                            text: "Rana Yograj, Maharashtra",
                            color: Colors.white,
                            fontweight: FontWeight.bold,
                            fontsize: 13,
                            fontfamily: "bold",
                          ),
                          Icon(Icons.chevron_right, color: Colors.white),
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

          Container(height: 1, width: double.infinity, color: Colors.white),

          Container(
            decoration: BoxDecoration(color: Color(0xFFEC0505)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "image 60.png"),
                      UiHelper.CustomImage(img: "image 55.png"),
                      UiHelper.CustomText(
                        text: "Mega Diwali Sale",
                        color: Colors.white,
                        fontweight: FontWeight.bold,
                        fontsize: 18,
                        fontfamily: "bold",
                      ),
                      UiHelper.CustomImage(img: "image 55.png"),
                      UiHelper.CustomImage(img: "image 61.png"),
                    ],
                  ),

                  SizedBox(height: 10),
                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffEAD3D3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                text: data[index]["text"].toString(),
                                color: Colors.black,
                                fontweight: FontWeight.bold,
                                fontsize: 10,
                                fontfamily: "bold",
                              ),
                              SizedBox(height: 5),
                              Image.asset(
                                "assets/images/${data[index]['img']}",
                                width: 80,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          SizedBox(
            height: 170,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: categroy.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiHelper.CustomImage(
                          img: categroy[index]['img'].toString(),
                        ),
                        SizedBox(height: 3),
                        UiHelper.CustomText(
                          text: categroy[index]['text'].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 10,
                          fontfamily: "bold",
                        ),
                        SizedBox(height: 3),
                        UiHelper.CustomText(
                          text: "Rs 79",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: UiHelper.CustomText(
              text: "Grocery & Kitchen",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 19,
              fontfamily: "bold",
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 120,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ItemsList(items: grocerykitchen),
            ),
          ),
        ],
      ),
    );
  }
}
