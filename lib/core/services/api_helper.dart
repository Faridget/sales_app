import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sales_app/core/Constants/constants.dart';
import 'package:sales_app/core/services/app_exception.dart';

class ApiBaseHelper {

   final dio = Dio();
  Future<dynamic> get(String url) async {
    debugPrint('Api Get, url $url');
    var responseJson='';
    try {
      final response = await dio.get(Constants.BASE_URL + url);
      debugPrint("My Url");
      debugPrint(Constants.BASE_URL + url);
      responseJson = response.data;
    } on SocketException {
      debugPrint('No net');
      throw FetchDataException('No Internet connection');
    }
    debugPrint('api get recieved!');
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic data) async {
    // print('Api Post, url $url');
    var responseJson='';
    try {
      //Map<String, String> headers = {"Content-type": "application/json"};
      debugPrint("UrlNOwIs>>${Constants.BASE_URL}$url");
       
      final response = await dio.post(Constants.BASE_URL + url,data:data);
      responseJson = _returnResponse(response);
    } on SocketException {
      debugPrint('No Internet');
      responseJson="No Internet";
      throw FetchDataException('No Internet connection');
      // return responseJson;
    }
    debugPrint('api post.');
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic data) async {
    debugPrint('Api Put, url $url');
    var responseJson='';
    try {
      final response = await dio.put(Constants.BASE_URL + url, data: data);
      responseJson = _returnResponse(response);
    } on SocketException {
      debugPrint('No Internet');
      throw FetchDataException('No Internet connection');
    }
    debugPrint('api put.');
    debugPrint(responseJson.toString());
    return responseJson;
  }

  Future<dynamic> delete(String url) async {
    debugPrint('Api delete, url $url');
    var apiResponse='';
    try {
      final response = await dio.delete(Constants.BASE_URL + url);
      apiResponse = _returnResponse(response);
    } on SocketException {
      debugPrint('No net');
      throw FetchDataException('No Internet connection');
    }
    debugPrint('api delete.');
    return apiResponse;
  }

}
 
dynamic _returnResponse( response) async {
  switch (response.statusCode) {
    case 200:
      var responseJson = json.decode(response.body.toString());
      debugPrint(responseJson);
      return responseJson;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
