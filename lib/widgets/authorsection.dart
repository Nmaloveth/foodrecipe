import 'package:flutter/material.dart';
import 'package:foodrecipe/static_constants.dart';


// ignore: must_be_immutable
class AuthorProfile extends StatefulWidget {
  String image;
  String name;
  String location;

  AuthorProfile(
      {super.key,
        required this.image,
        required this.name,
        required this.location});

  @override
  State<AuthorProfile> createState() => _AuthorState();
}

class _AuthorState extends State<AuthorProfile> {
  bool _isFollowing = false;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset(
            widget.image,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: textTheme.bodyLarge,
              ),
              Row(
                children: [
                  Image.asset(
                    ConstantVariables.location,
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    widget.location,
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ]),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isFollowing = !_isFollowing;

            });

          },

          style: ElevatedButton.styleFrom(
            backgroundColor: _isFollowing ? Colors.transparent : Colors.red,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(_isFollowing ? 'Followed' : ConstantVariables.followText),
        ),
      ],
    );
  }

}