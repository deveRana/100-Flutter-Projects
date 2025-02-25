import 'package:blinkit_app/repository/widgets/itemslist.dart';
import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"},
  ];
  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"},
  ];
  var hosuehold = [
    {"img": "image 36.png", "text": "Surfexcel"},
    {"img": "image 37.png", "text": "Soap"},
    {"img": "image 38.png", "text": "Perfume"},
    {"img": "image 39.png", "text": "Sofa"},
    {"img": "image 40.png", "text": "Hair Oil"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(height: 5),
          SizedBox(
            height: 120,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ItemsList(items: secondgrocery),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: UiHelper.CustomText(
              text: "Snacks & Drinks",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 19,
              fontfamily: "bold",
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ItemsList(items: snacksanddrinks),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: UiHelper.CustomText(
              text: "Household Essentials",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 19,
              fontfamily: "bold",
            ),
          ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ItemsList(items: hosuehold),
            ),
          ),
        ],
      ),
    );
  }
}
