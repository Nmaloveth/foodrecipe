import 'package:flutter/material.dart';
import 'package:foodrecipe/static_constants.dart';
import 'package:foodrecipe/widgets/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _firstcontroller;
  late Animation<double> _animation;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();
    _firstcontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), // Adjust duration as needed
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _firstcontroller,
        curve: Curves.bounceIn,
      ),
    );

    _animation1 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _firstcontroller,
        curve: Curves.easeIn,
      ),
    );

    _animation2 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _firstcontroller,
        curve: Curves.easeInCirc,
      ),
    );

    _animation3 = Tween<double>(begin: 0.0, end: 1.0).animate(
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
    );
  }
}
