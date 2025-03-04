import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageProviderModel with ChangeNotifier {
  File? _image;

  File? get image => _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      notifyListeners();
    }
  }

  //======
  bool islike = false;

  void likeOk(){
    islike = !islike;
    notifyListeners();
  }
bool isNotLike = false;
void isNotlike(){
  isNotLike = !isNotLike;
  notifyListeners();
}
  //======
  bool isComment = false;

  void commentOk(){
    isComment = !isComment;
    notifyListeners();
  }
}


