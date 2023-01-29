import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [

  "images/oferta1.jpg",
  "images/oferta8.jpg",
  "images/oferta3.jpg",
  "images/oferta4.jpg",
  "images/oferta5.jpg",
  "images/oferta6.jpg",
  "images/oferta9.jpg",
  "images/oferta10.jpg"
    
  
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            height: 420,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: imageSliders,
        ),
      )
    );
  }
}


final List<Widget> imageSliders = imgList
    .map((item) => Container(
      
      margin: const EdgeInsets.all(5.0),
      child: ListView(
        children: [
          const SizedBox(height: 110),
           ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: SizedBox(
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 0,
                    color: const Color.fromRGBO(186, 0, 0, 1),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        ],
        
      ),
    ))
    .toList();