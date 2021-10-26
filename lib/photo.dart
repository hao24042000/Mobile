import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Photo {
  // {
  // "albumId": 1,
  // "id": 1,
  // "title": "accusamus beatae ad facilis cum similique qui sunt",
  // "url": "https://via.placeholder.com/600/92c952",
  // "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  // },
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);
  static Future<List<Photo>> fetchData() async{
    String url="https://jsonplaceholder.typicode.com/photos";
    var client = http.Client();
    var response = await client.get(Uri.parse(url));
    if(response.statusCode==200){
      print("Tải dữ liệu thành công");
      var result= response.body;
      var jsonData = jsonDecode(result);
      List<Photo> ls=[];
      for (var item in jsonData) {
        var albumId = item['albumId'];
        var id = item['id'];
        var title = item['title'];
        var url = item['url'];
        var thumbnailUrl = item['thumbnailUrl'];
        Photo p= new Photo(albumId, id, title, url, thumbnailUrl);
        //print(p.title);
        ls.add(p);
      }
     //print(ls.length);
      return ls;
    }
    else {
      print("Tải dữ liệu thất bại");
      throw Exception("Lỗi lấy dữ liệu");
    }
  }
}