import 'package:curriculumvitae/widgets/swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 190, 219),
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(248, 0, 0, 0),
        backgroundColor: const Color.fromARGB(195, 101, 101, 209),
        title: const Text("Curriculum"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                children: <Widget>[
                  Image.network(
                      "https://i.pinimg.com/originals/79/5b/f1/795bf13109c878f68b11185a85f054d2.jpg"),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yael Avila Melendez',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '27/03/2001',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '648-122-9050',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Ingenieria En Sistemas',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Text(
                    'Habilidades: Proactividad, Gestión de equipos, Adaptabilidad a cambios, Comunicación efectiva, Empatía, Manejo de arduino.',
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text(
                    'Experiencia Academica: Manejo de base de datos, desarrollo de interfaces, Manejo de frameworks, Java, Metodologias Scrum , DevOps',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Experiencia Profecional: Atencion al cliente, Manejo de arduinos para la creacion de un control de acceso con lenguaje c#',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          CardSwiper(), // Coloca aquí el CardSwiper fuera del Center
        ],
      ),
    );
  }
}
