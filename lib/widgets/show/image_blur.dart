import 'dart:ui';

import 'package:flutter/material.dart';

class ImageBlur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -5,
      right: -5,
      top: -5,
      bottom: -5,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
