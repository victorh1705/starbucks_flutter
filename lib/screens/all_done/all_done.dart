import 'package:flutter/material.dart';
import 'package:starbucks_flutter/utils/color+ext.dart';

class AllDone extends StatelessWidget {
  static String route = "/allDone";

  const AllDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("assets/starbucks_icon.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "All Done",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: CustomColors.greenDefault(),
                    ),
                  ),
                  Container(
                    height: 24,
                  ),
                  const Text(
                    "Thanks for giving us your precious time. Now you are ready for an enjoyable moment.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Image.asset("assets/saly_18.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: CustomColors.greenDefault(),
                  ),
                  child: TextButton(
                    onPressed: () {
                      print("ddsdsd");
                    },
                    child: const Text(
                      "Let's Start",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
