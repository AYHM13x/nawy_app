import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomAddImage extends StatefulWidget {
  const CustomAddImage({super.key});

  @override
  State<CustomAddImage> createState() => _CustomAddImageState();
}

class _CustomAddImageState extends State<CustomAddImage> {
  List<File> _images = [];
  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _images.add(File(pickedFile.path));
      } else {
        print('No image selected.');
      }
    });
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Gallery'),
                onTap: () {
                  _pickImage(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Camera'),
                onTap: () {
                  _pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _images.isEmpty
            ? Text(
                "اضافة صور توضيحية لعقارك",
                style: TextStyle(fontSize: 18),
              )
            : Container(
                height: 200,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // عدد الأعمدة في الشبكة
                  ),
                  itemCount: _images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(3),
                      child: Image.file(_images[index]),
                    );
                  },
                ),
              ),
        ElevatedButton(
          onPressed: () {
            _showPicker(context);
          },
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
