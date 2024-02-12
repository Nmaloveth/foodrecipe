import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/recipesection.dart';
import 'package:foodrecipe/static_constants.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({super.key});

  @override
  Widget build(BuildContext context) {
   TextTheme textTheme= Theme.of(context).textTheme;

    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
               ConstantVariables.ingredientText,
              style: textTheme.displayMedium,
            ),
            Text(
               ConstantVariables.numberOfItems,
              style: textTheme.bodySmall,)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Ingredient(
          image:   ConstantVariables.breadimg,
          name:  ConstantVariables.bread,
          weight:  ConstantVariables.weight,
        ),
      const  SizedBox(height: 15),
        Ingredient(
          image:   ConstantVariables.milkimg ,
          name:   ConstantVariables.eggs,
          weight:  ConstantVariables.weight,
        ),
      const  SizedBox(height: 15),
        Ingredient(
          image:  ConstantVariables.breadimg,
          name:  ConstantVariables.flour,
          weight:  ConstantVariables.weight,
        ),
     const   SizedBox(height: 15),
        Ingredient(
          image:  ConstantVariables.milkimg ,
          name:  ConstantVariables.honey,
          weight:  ConstantVariables.weight,
        ),
       const SizedBox(height: 15),
        Ingredient(
          image:   ConstantVariables.breadimg,
          name:   ConstantVariables.pepper,
          weight:  ConstantVariables.weight,
        ),
      const  SizedBox(height: 15),
      ],
    );
  }
}