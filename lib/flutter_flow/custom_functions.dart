import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String audioCustomFunct(String audioPath) {
  var audioBytes = utf8.encode(audioPath);

  // Byte array'i Base64 stringine dönüştür
  String base64Audio = base64Encode(audioBytes);

  return base64Audio;
}

String newFunction(FFUploadedFile file) {
  final bytes = file.bytes;

  // Byte array'i Base64 stringine dönüştür
  String base64Audio = base64Encode(bytes as List<int>);

  return base64Audio;
}

String processNumber(int number) {
  int sumOfEvens = 0; // Çift sayıların toplamı
  int productOfOdds = 1; // Tek sayıların çarpımı

  for (int i = 1; i <= number; i++) {
    // 1'den verilen sayıya kadar döngü
    if (i % 2 == 0) {
      // Eğer çift sayıysa
      sumOfEvens += i; // Çifte ekle
    } else {
      // Eğer tek sayıysa
      productOfOdds *= i; // Çarpıma dahil et
    }
  }

  // Sonuçları bir map olarak döndür
  return "Sum of Evens: $sumOfEvens, Product of Odds: $productOfOdds";
}
