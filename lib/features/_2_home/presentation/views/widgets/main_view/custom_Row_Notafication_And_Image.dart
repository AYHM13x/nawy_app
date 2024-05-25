import 'package:flutter/material.dart';

class CustomRowNotaficationAndImage extends StatelessWidget {
  const CustomRowNotaficationAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white)),
            onPressed: () {},
            icon: const Icon(Icons.notifications)),
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/profileheade.svg"),
          radius: 25,
        )
      ],
    );
  }
}
