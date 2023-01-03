import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:developer';

var file;
late String nameFile;

takePicture(ImageSource media, inSetstate) async {
  final ImagePicker picker = ImagePicker();
  file = await picker.pickImage(source: media);
  if (file != null) {
    nameFile = file.path.split('/').last;
    log("nama file $nameFile");
    inSetstate(() {}); //halankan setState yang dikirim
    return nameFile;
  }else{
    return false;
  }
}
