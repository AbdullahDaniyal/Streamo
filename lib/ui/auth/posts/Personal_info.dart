import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_app/ui/auth/posts/home_page.dart';
import 'package:my_flutter_app/widgets/info_fields.dart';

import '../../../widgets/continue_button.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  File? _image;
  ImagePicker image = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill in your profile",
            style: TextStyle(color: Colors.black)),
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                  child: _image == null
                      ? Container() // No image selected
                      : ClipOval(
                          child: Image.file(
                            _image!,
                            fit: BoxFit.cover,
                            width: 160,
                            height: 160,
                          ),
                        ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ElevatedButton(
                    onPressed: getgall,
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const InfoTextField(labelText: "Full Name"),
            const SizedBox(height: 20),
            const InfoTextField(labelText: "Nick Name"),
            const SizedBox(height: 20),
            const InfoTextField(labelText: "Date Of Birth"),
            const SizedBox(height: 20),
            const InfoTextField(labelText: "Email"),
            const SizedBox(height: 40),
            ContinueButton(
              text: "Continue",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              backgroundColor: Colors.deepPurple,
              isWhite: true,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getgall() async {
    var img = await image.pickImage(source: ImageSource.gallery);
    if (img != null) {
      setState(() {
        _image = File(img.path);
      });
    }
  }
}
