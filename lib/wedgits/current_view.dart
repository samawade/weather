import 'package:flutter/material.dart';

class CurrentView extends StatelessWidget {
  const CurrentView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Mogadishu View, SO ",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: "\n Updated: 14:59 EAT, 21/9/2022",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                ),
                TextSpan(
                  text: "\n\n 27.0\u00B0",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "C",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextSpan(
                  text: "\n Clear SKY 🌤",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
