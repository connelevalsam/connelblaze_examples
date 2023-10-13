import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BallBounceIndex extends StatefulWidget {
  const BallBounceIndex({super.key});

  @override
  State<BallBounceIndex> createState() => _BallBounceIndexState();
}

class _BallBounceIndexState extends State<BallBounceIndex> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: const CircleAvatar(
                backgroundColor: Colors.red,
              )
                  .animate()
                  .slideY(begin: -0.5, end: 0.2, duration: 0.9.seconds)
                  .then(delay: 200.milliseconds)
                  .slideY(end: -0.3, duration: 0.9.seconds)
                  .then(delay: 200.milliseconds)
                  .slideY(end: 0.1, duration: 0.5.seconds)
                  .then(delay: 1.seconds)
                  .scaleXY(end: 20, duration: 2.seconds)
                  .then(delay: 2.seconds),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: FlutterLogo(
              size: 80,
            )
                .animate()
                .fadeIn(delay: 4.seconds, duration: 900.milliseconds)
                .slideX(begin: 3, duration: 0.5.seconds),
          ),
        ],
      ),
    );
  }
}
