import 'package:flutter/material.dart';
import 'package:foodrecipe/static_constants.dart';

// ignore: must_be_immutable
class Video extends StatefulWidget {
  String backgroundImage;

  Video({
    Key? key,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool _isloading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              widget.backgroundImage,
            ),
          ),
        ),
        if (_isloading)
          const CircularProgressIndicator(color: Colors.red)
        else
          GestureDetector(
            onTap: () {
              _isloading = !_isloading;
            },
            child: Image.asset( ConstantVariables.playbutton, fit: BoxFit.cover),
          )
      ],
    );
  }
}