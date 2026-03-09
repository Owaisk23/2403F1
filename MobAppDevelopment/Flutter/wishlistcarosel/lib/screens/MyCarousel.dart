import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class MyCarousel extends StatelessWidget {
  const MyCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Carousel", style: GoogleFonts.lobster(),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 200,
                viewportFraction: 1.0,
              ),
              items: [
                Image.network(
                  'https://images.unsplash.com/photo-1765447041709-9f1efbc81606?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1765447041709-9f1efbc81606?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1765447041709-9f1efbc81606?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.purple,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
