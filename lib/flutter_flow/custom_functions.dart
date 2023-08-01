import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

double getAverageOfList(List<int> ratings) {
  // get average of a list and round it to 1 digit after the comma
  double sum = 0;
  for (int rating in ratings) {
    sum += rating;
  }
  double average = sum / ratings.length;
  return double.parse(average.toStringAsFixed(1));
}
