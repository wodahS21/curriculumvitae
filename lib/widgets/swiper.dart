import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  CardSwiper({super.key});

  // Lista de rutas de imágenes
  final List<String> imagePaths = [
    'assets/cs.png',
    'assets/yo.jpg',
    'assets/fa.jpg',
    // Agrega más rutas según sea necesario
  ];

  // Lista de textos correspondientes a las imágenes
  final List<String> imageTexts = [
    'Jugador de casual',
    'asset',
    'Gustos musicales',
    // Agrega más textos según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.35,
      child: Swiper(
        itemCount: imagePaths.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.39,
        itemHeight: size.height * 0.5,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: ''),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePaths[index],
                    width: size.width * 0.38,
                    height: size.height * 0.3,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 5,
                  ), // Ajusta el espacio entre la imagen y el texto
                  Text(
                    imageTexts[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
