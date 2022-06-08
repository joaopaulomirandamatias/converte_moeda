import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  Future getData() async {
    var url =
        Uri.parse('https://api.hgbrasil.com/finance?format=json&key=d665608a');
    var response = await http.get(url);
    return json.decode(response.body);
  }
}
