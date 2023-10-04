import 'package:flutter/material.dart';

class Pagination extends StatelessWidget {
  const Pagination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: const Icon(Icons.chevron_left),
          ),
          const Text(
            "Next",
            style: TextStyle(
              color: Colors.green,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
