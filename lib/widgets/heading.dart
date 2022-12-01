import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Padding(padding: EdgeInsets.only(top: value * 5), child: child),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 700),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
