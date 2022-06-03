import 'dart:convert';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:handova/models/api_urls.dart';
import 'package:handova/models/response/login_response.dart';
import 'package:http/http.dart' as http;

class AuthService{
   Future<LoginResponse?> loginUser(
      {required String username, required String password}) async {
    Map<String, String> headers = {
      HttpHeaders.authorizationHeader:
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImQ4NzgyMjJiLTM1ZDAtNGM0Ny04Mzk5LWY4NDZhYWI3MzFmYSIsImlhdCI6MTY0MTkzMTQ0MSwiZXhwIjoxNjQxOTM1MDQxfQ.Bee0gnETd_65q8d57KfgngRnONfvvPAo464syrT85Ds'
    };

    Map<String, String> body = {
      'username': username,
      'password': password,
      'device_identification': '123445',
      'firebase_messaging_token':'12222',
    };
    final response = await http.post(
      Uri.parse(ApiUrls.loginurl),
      headers: headers,
      encoding: Encoding.getByName('utf-8'),
      body: body,
    );
    print(response.body);
    var data =jsonDecode(response.body);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print(data);
      return LoginResponse.fromJson(jsonResponse);
    } else {
      // print(response.statusCode);
      print(response.body);
      throw Exception('failed to login user');
    }
  }
}