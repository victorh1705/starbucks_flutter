import 'package:flutter/material.dart';
import 'package:starbucks_flutter/screens/all_done/all_done.dart';
import 'package:starbucks_flutter/utils/color+ext.dart';

class Pagination extends StatelessWidget {
  const Pagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: const Icon(Icons.chevron_left),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AllDone.route);
            },
            child: Text(
              "Next",
              style: TextStyle(
                color: CustomColors.greenDefault(),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
