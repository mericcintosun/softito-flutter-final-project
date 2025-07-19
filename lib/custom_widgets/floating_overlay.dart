import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingOverlay extends StatelessWidget {
  final Widget child;

  const FloatingOverlay({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          bottom: 20,
          left: 20,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/const_assets/cookie.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 20,
          right: 20,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xff0553ef),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/const_assets/feedback.svg',
                  width: 20,
                  height: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Feedback',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
