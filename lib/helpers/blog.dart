import 'dart:developer';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutterblogapp/models/blog_model.dart';

class Blog {
  List<BlogModel> blogs = [];

  Future<void> getBlog() async {
    //
    String url = "http://192.168.0.102/react-js-laravel-8-blog-app/public/api";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    jsonData["data"].forEach((element) {
      BlogModel blogModel = BlogModel(
        title: element['title'],
        description: element["description"],
      );
      blogs.add(blogModel);
    });
  }
}
