import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/models/ingredients.dart';
import 'package:recipe_app/models/recipe_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ItemsDetailsScreens extends StatefulWidget {
  final RecipeItems recipeItems;
  const ItemsDetailsScreens({super.key, required this.recipeItems});

  @override
  State<ItemsDetailsScreens> createState() => _ItemsDetailsScreen();
}

class _ItemsDetailsScreen extends State<ItemsDetailsScreens> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.recipeItems.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.black38,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                              widget.recipeItems.woner,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.recipeItems.wonerName,
                                  maxLines: 1,
                                  style: TextStyle(
                                    height: 0,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "12 Recipes Shared",
                                  style: TextStyle(
                                    height: 0,
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${widget.recipeItems.rate}",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${widget.recipeItems.reviews} Reviews",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                widget.recipeItems.name,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "1 Bowl (${widget.recipeItems.weight}g)",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            "See details",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyProgressIndicatorValue(
                            name: "Carbs",
                            amount: "${widget.recipeItems.carb} g",
                            percentage: "(36%)",
                            color: Colors.redAccent,
                            data: 0.3,
                          ),
                          MyProgressIndicatorValue(
                            name: "Fats",
                            amount: "${widget.recipeItems.fat} g",
                            percentage: "(96%)",
                            color: Colors.green,
                            data: 0.9,
                          ),
                          MyProgressIndicatorValue(
                            name: "Protein",
                            amount: "${widget.recipeItems.protein} g",
                            percentage: "(8%)",
                            color: Colors.orange,
                            data: 0.1,
                          ),
                          MyProgressIndicatorValue(
                            name: "Calories",
                            amount: "${widget.recipeItems.calorie} g",
                            percentage: "(56%)",
                            color: Colors.redAccent,
                            data: 0.5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Ingredients",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "See details",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              ingredients.length,
                              (index) => Column(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: ingredients[index].color,
                                    child: Image.asset(
                                      ingredients[index].image,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    ingredients[index].name,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.5,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 4.0,
              right: 30,
              child: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 5,
                    )
                  ],
                  color: widget.recipeItems.fav ? Colors.red : Colors.black45,
                ),
                child: Icon(
                  Iconsax.heart,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyProgressIndicatorValue extends StatelessWidget {
  final String? name;
  final String? amount;
  final String percentage;
  final Color color;
  final double data;

  const MyProgressIndicatorValue({
    Key? key,
    this.name,
    this.amount,
    required this.percentage,
    required this.color,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 20.0, // Adjusted for better visuals
      circularStrokeCap: CircularStrokeCap.round,
      lineWidth: 7.0,
      reverse: false,
      backgroundColor: color.withOpacity(0.2),
      animation: true,
      animationDuration: 500,
      progressColor: color,
      percent: data, // Ensure this is between 0.0 and 1.0
      header: name != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
              child: SizedBox(
                width: 60, // Fixed width for all headers
                child: Text(
                  name!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          : null,
      footer: amount != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
              child: SizedBox(
                width: 60, // Fixed width for all footers
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$amount ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: percentage,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(0, size.height, 0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
