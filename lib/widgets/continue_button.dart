import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.image,
    required this.backgroundColor,
    this.isWhite,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final ImageProvider? image;
  final Color backgroundColor;
  final bool? isWhite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: const BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) // Display the image if provided
              Image(image: image!, height: 22), // Adjust the height as needed
            SizedBox(
                width: image != null
                    ? 12
                    : 0), // Add spacing between image and text
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: isWhite == true ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
