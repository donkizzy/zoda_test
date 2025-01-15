import 'package:flutter/material.dart';
import 'package:zoda_test/app_colors.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
          border: Border.all(color: galleryWhite),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
    );
  }
}
