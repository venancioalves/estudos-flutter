import 'package:aula14/controllers/posts_controller.dart';
import 'package:aula14/models/posts_model.dart';
import 'package:aula14/widgets/custom_button_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<List<Post>>(
                valueListenable: _controller.posts,
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
                onPressed: () => _controller.callAPI(),
                title: 'Buttom Personalizado',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
