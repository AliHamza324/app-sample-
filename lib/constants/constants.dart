import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//color constants
final kWhiteColor = Colors.white;
final kBlackColor = Colors.black;
final kBlueColor = Colors.blue;
final kAmberColor = Colors.amber;
final kYellowColor = Colors.yellow;
final kLightGreenColor = Colors.lightGreen;

// Firebase constants
FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseStorage storage = FirebaseStorage.instance;
String? userId = FirebaseAuth.instance.currentUser?.uid;

//snackBar constants
mySnackBar(String? message, {SnackPosition? snackPosition, Widget? icon}) {
  Get.showSnackbar(GetSnackBar(
    message: message,
    duration: Duration(seconds: 3),
    snackPosition: snackPosition!,
    icon: icon,
  ));
}
