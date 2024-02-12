import 'package:flutter/material.dart';
import 'package:foodrecipe/ingredientsection.dart';
import 'package:foodrecipe/static_constants.dart';
import 'package:foodrecipe/widgets/authorsection.dart';
import 'package:foodrecipe/widgets/navbar.dart';
import 'package:foodrecipe/widgets/ratingsection.dart';
import 'package:foodrecipe/widgets/titleinfosection.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _firstcontroller;
  late Animation<double> _firstanimation;
  late Animation<double> _secondanimation;
  late Animation<double> _thirdanimation;
  late Animation<double> _fourthanimation;

  @override
  void initState() {
    super.initState();
    _firstcontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), // Adjust duration as needed
    );
    _firstanimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _firstcontroller,
        curve: Curves.bounceIn,
      ),
    );

    _secondanimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _firstcontroller,
        curve: Curves.easeIn,
      ),
    );

    _thirdanimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _firstcontroller,
        curve: Curves.easeInCirc,
      ),
    );

    _fourthanimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _firstcontroller,
        curve: Curves.easeInQuad,
      ),
    );

    // Start the animation
    _firstcontroller.forward();
  }

  @override
  void dispose() {
    _firstcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const Appbar_(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeTransition(
                opacity: _firstanimation,
                child: Text(
                  ConstantVariables.titleText,
                  style: textTheme.displayLarge,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeTransition(
                opacity: _firstanimation,
                child: Video(backgroundImage: ConstantVariables.background),
              ),
              const SizedBox(
                height: 14,
              ),
              FadeTransition(
                opacity: _secondanimation,
                child: Rating(
                    rating: ConstantVariables.rating,
                    reviews: ConstantVariables.reviews),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeTransition(
                opacity: _thirdanimation,
                child: AuthorProfile(
                    image: ConstantVariables.user,
                    name: ConstantVariables.userName,
                    location: ConstantVariables.userLocation),
              ),
              const SizedBox(
                height: 25,
              ),
              FadeTransition(
                opacity: _fourthanimation,
                child: const Ingredients(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}