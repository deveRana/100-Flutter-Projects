import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  ItemsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: items.length, // Use the passed list
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(right: 15),
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0XFFD9EBEB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: UiHelper.CustomImage(
                    img: items[index]["img"].toString(), // Use the passed list
                  ),
                ),
              ),
              SizedBox(height: 3),
              UiHelper.CustomText(
                text: items[index]["text"].toString(), // Use the passed list
                color: Colors.black,
                fontweight: FontWeight.normal,
                fontsize: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
