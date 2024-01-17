import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ofertasdomes/widgets/custom_card_widget.dart';

final List<String> imgList = [
  'http://atan.com.br/assets/banner01.jpg',
  'http://atan.com.br/assets/banner02.jpg',
  'http://atan.com.br/assets/banner03.jpg',
  'http://atan.com.br/assets/banner04.jpg'
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider.builder(
                itemCount: imgList.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = imgList[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                  height: 200,
                )),

            //-------------------------------------------------------------------------

            Row(
              children: [
                Expanded(flex: 1, child: CustomCardWidget()),
                Expanded(flex: 1, child: CustomCardWidget()),
              ],
            ),

            Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
