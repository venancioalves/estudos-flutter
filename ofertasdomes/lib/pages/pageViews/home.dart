import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

            Container(
              padding: EdgeInsets.all(50),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 4,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/01.jpeg',
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'NOTEBOOK ACER I5 28 RAM 85 SSD TELA 78P',
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: const Text(
                        'RS 1.200,99',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 56)),
                        child: const Text(
                          'Adicionar ao carrinho',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
