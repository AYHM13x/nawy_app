import 'package:flutter/material.dart';

class customSearsh extends StatelessWidget {
  const customSearsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: const BoxDecoration(
        border:
            Border.symmetric(horizontal: BorderSide(), vertical: BorderSide()),
        borderRadius: BorderRadius.all(Radius.circular(32)),
      ),
      child: Expanded(
        child: Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.search),
            ),
            const SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent))),
                )),
            GestureDetector(
              child: const Icon(Icons.photo),
            ),
            GestureDetector(
              child: const Icon(Icons.filter),
            ),
          ],
        ),
      ),
    );
  }
}
