import 'package:flutter/material.dart';


class WorldTime {

  late String title; // location name for UI
  late String flag; // url to an asset flag icon
  late IconData url;
  late String body;

  WorldTime(this.title, this.flag, this.url, this.body);
}