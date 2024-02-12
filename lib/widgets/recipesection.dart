import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Ingredient extends StatelessWidget {
  String image;
  String name;
  String weight;

  Ingredient(
      {super.key,
      required this.image,
      required this.name,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.transparent, width: 2),
          color: Colors.blueGrey.withAlpha(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.transparent, width: 2),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  name,
                  style: textTheme.bodyLarge,
                ),
              ],
            ),
            Text(
              "$weight Kg",
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("$name Added to Cart")));
      },
    );
  }
}