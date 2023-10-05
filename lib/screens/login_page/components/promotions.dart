import 'package:flutter/material.dart';

class Promotions extends StatelessWidget {
  const Promotions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Starbucks Promotion",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          height: 28,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
              ),
              Image.asset(
                "assets/promotions01.png",
                width: 190,
                height: 136,
              ),
              Container(
                width: 30,
              ),
              Image.asset(
                "assets/promotions01.png",
                width: 190,
                height: 136,
              ),
              Container(
                width: 30,
              ),
              Image.asset(
                "assets/promotions01.png",
                width: 190,
                height: 136,
              ),
              Container(
                width: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 19,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xaf00613a),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff979797),
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff979797),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
