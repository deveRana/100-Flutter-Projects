import 'package:flutter/material.dart';

class Ingredients {
  final String name, image;
  final Color color;
  Ingredients({
    required this.color,
    required this.name,
    required this.image,
  });
}

List<Ingredients> ingredients = [
  Ingredients(
    color: const Color(0xfff4cfcc),
    name: 'Potato',
    image: 'assets/recipe_app_ui/potato.png',
  ),
  Ingredients(
    color: const Color(0xffb8efd0),
    name: 'Onion',
    image: 'assets/recipe_app_ui/onion.png',
  ),
  Ingredients(
    color: const Color(0xffffe9b2),
    name: 'Almond',
    image: 'assets/recipe_app_ui/almond.png',
  ),
  Ingredients(
    color: const Color(0xffddd0a4),
    name: 'Broccoli',
    image: 'assets/recipe_app_ui/broccoli.png',
  ),
  Ingredients(
    color: const Color(0xffd8d8d8),
    name: 'Ginger',
    image: 'assets/recipe_app_ui/ginger.png',
  ),
];
