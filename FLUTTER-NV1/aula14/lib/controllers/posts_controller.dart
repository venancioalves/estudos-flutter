import 'dart:convert';

import 'package:aula14/models/posts_model.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class PostsController {
  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);

  callAPI() async {
    // criando um client HTTP
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse('http://jsonplaceholder.typicode.com/posts'),
      );
      var decodedResponse = jsonDecode(response.body) as List;
      posts.value = decodedResponse.map((e) => Post.fromJson(e)).toList();
    } finally {
      client.close();
    }
  }
}
