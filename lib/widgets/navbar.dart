import 'package:flutter/material.dart';

// ignore: camel_case_types
class Appbar_ extends StatelessWidget implements PreferredSizeWidget {
  const Appbar_({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        PopupMenuButton<String>(
          icon: const Icon(Icons.more_horiz),
          onSelected: (String value) {},
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'option1',
              child: Text('Settings'),
            ),
            const PopupMenuItem<String>(
              value: 'option2',
              child: Text('Log Out'),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
