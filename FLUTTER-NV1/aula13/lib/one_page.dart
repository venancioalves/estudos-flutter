import 'dart:convert';
import 'dart:html';

import 'package:aula13/widgets/custom_button_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<List<Post>>(
                valueListenable: posts,
                builder: (_, value, __) => ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: value.length,
                    itemBuilder: (_, idx) => ListTile(
                          title: Text(value[idx].title),
                        )),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtonWidget(
                disable: false,
                onPressed: () => callAPI(),
                title: 'Buttom Personalizado',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);

  factory Post.fromJson(Map json) {
    return Post(json['userId'], json['id'], json['title'], json['body']);
  }
}

  


//---------------------------------
/*import 'dart:convert';
import 'dart:html';

import 'package:aula13/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  ValueNotifier<List<Post>> posts = ValueNotifier<List<Post>>([]);
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  callAPI() async {
    // criando um client HTTP
    var client = http.Client();
    try {
      inLoader.value = true;
      var response = await client.get(
          Uri.parse('http://192.168.1.248:8080/user'),
          headers: {"Content-Type": "application/json"});
      print(response.body);
      var decodedResponse = jsonDecode(response.body) as List;
      List<Post> posts = decodedResponse.map((e) => Post.fromJson(e)).toList();
      print('text');
      //await Future.delayed(Duration(seconds: 2));
    } finally {
      client.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: Listenable.merge([posts, inLoader]),
                builder: (_, __) => inLoader.value
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: posts.value.length,
                        itemBuilder: (_, idx) => ListTile(
                          title: Text(posts.value[idx].name),
                        ),
                      ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtonWidget(
                disable: false,
                onPressed: () => callAPI(),
                title: 'Buttom Personalizado',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Post {
  final int id;
  final String name;
  final String login;
  final String password;
  final String email;
  final String phone;
  final String code_sales_person;
  final String type_sales;
  final int id_profile;
  final String tbl_price;

  Post(this.id, this.name, this.login, this.password, this.email, this.phone,
      this.code_sales_person, this.type_sales, this.id_profile, this.tbl_price);

  factory Post.fromJson(Map json) {
    return Post(
      json['id'],
      json['name'],
      json['login'],
      json['password'],
      json['email'],
      json['phone'],
      json['code_sales_person'],
      json['type_sales'],
      json['id_profile'],
      json['tbl_price'],
    );
  }
}
*/