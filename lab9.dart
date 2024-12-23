import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';


File _imageFile;
List _classifiedResult;
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: Text("Cat Dog Identifier")
    ),
    body: Center(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: (_imageFile != null)?
              Image.file(_imageFile) :
              Image.network('<https://i.imgur.com/sUFH1Aq.png>')
          ),
          RaisedButton(
              onPressed: (){
                selectImage();
                },
              child: Icon(Icons.camera)
              SizedBox(height: 20),
          SingleChildScrollView(
            child: Column(
              children: _classifiedResult != null
                  ? _classifiedResult.map((result) {
                return Card(
                  elevation: 0.0,
                  color: Colors.lightBlue,
                  child: Container(
                    width: 300,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "${result["label"]} :  ${(result["confidence"] * 100).toStringAsFixed(1)}%",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              }).toList()
                  : [],
            ),
          ),
        ],
      ),
    ),
  );
}
Future selectImage() async {
  final picker = ImagePicker();
  var image = await picker.getImage(source: ImageSource.gallery, maxHeight: 300);
  setState(() {
    if (image != null) {
      _imageFile = File(image.path);
    } else {
      print('No image selected.');
    }
  });
}

Future loadImageModel() async {
  Tflite.close();
  String result;
  result = await Tflite.loadModel(
    model: "assets/catdog_model.tflite",
    labels: "assets/cat_dog_labels.txt",
  );
  print(result);
}

@override
void initState() {
  super.initState();
  loadEmojiModel();
}

Future classifyImage(image) async {
  _classifiedResult = null;
  // Run tensorflowlite image classification model on the image
  print("classification start $image");
  final List result = await Tflite.runModelOnImage(
    path: image.path,
    numResults: 6,
    threshold: 0.05,
    imageMean: 127.5,
    imageStd: 127.5,
  );
  print("classification done");
  setState(() {
    if (image != null) {
      _imageFile = File(image.path);
      _classifiedResult = result;
    } else {
      print('No image selected.');
    }
  });
}

Future selectImage() async {
  final picker = ImagePicker();
  var image = await picker.getImage(source: ImageSource.gallery, maxHeight: 300);
  classifyImage(image);
}