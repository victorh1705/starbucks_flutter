import 'package:flutter/material.dart';
import 'package:starbucks_flutter/utils/color+ext.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
