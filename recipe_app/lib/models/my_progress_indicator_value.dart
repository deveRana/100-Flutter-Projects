import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      radius: 60.0,
      lineWidth: 8.0,
      percent: data, // Value between 0.0 and 1.0
      center: Text(
        percentage,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      progressColor: color,
      backgroundColor: Colors.grey[200]!,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
