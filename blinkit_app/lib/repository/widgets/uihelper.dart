import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  static CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0xFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center, // Ensures text is centered
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: Padding(
            padding: EdgeInsets.all(8), // Adjust padding as needed
            child: Image.asset(
              "assets/images/search.png",
              height: 20,
              width: 20,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(8), // Adjust padding as needed
            child: Image.asset(
              "assets/images/mic 1.png",
              height: 20,
              width: 20,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static CustomButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0XFF27AF34)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(fontSize: 8, color: Color(0XFF27AF34)),
        ),
      ),
    );
  }
}
