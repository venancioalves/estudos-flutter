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
          Uri.parse('http://192.168.1.248:8080/user'),
          headers: {"Content-Type": "application/json"});
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
                          title: Text(value[idx].name),
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
  int id;
  String name;
  String login;
  String password;
  String email;
  String phone;
  String code_sales_person;
  String type_sales;
  int id_profile;
  String tbl_price;

  Post(
      {required this.id,
      required this.name,
      required this.login,
      required this.password,
      required this.email,
      required this.phone,
      required this.code_sales_person,
      required this.type_sales,
      required this.id_profile,
      required this.tbl_price});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'],
        name: json['name'],
        login: json['login'],
        password: json['password'],
        email: json['email'],
        phone: json['phone'],
        code_sales_person: json['code_sales_person'],
        type_sales: json['type_sales'],
        id_profile: json['id_profile'],
        tbl_price: json['tbl_price']);
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