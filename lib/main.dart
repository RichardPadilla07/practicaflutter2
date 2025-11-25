import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              // Suiza
              ImageSection(image: 'images/lake.jpg'),
              TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
                stars: 41,
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              ),

              // Ecuador: Mitad del Mundo
              ImageSection(image: 'images/QTWJJLKURRHIDFR7UYQFFNHNRQ.jpeg'),
              TitleSection(
                name: 'Mitad del Mundo',
                location: 'Quito, Ecuador',
                stars: 55,
              ),
              ButtonSection(),
              TextSection(
                description:
                  'La Mitad del Mundo es un monumento y complejo turístico ubicado al norte de Quito, donde se puede estar sobre la línea ecuatorial. El sitio cuenta con museos, actividades culturales y una vista única de la división entre hemisferios.',
              ),

              // Ecuador: Quilotoa
              ImageSection(image: 'images/WhatsApp-Image-2025-05-01-at-15.52.37-1.jpeg'),
              TitleSection(
                name: 'Laguna Quilotoa',
                location: 'Cotopaxi, Ecuador',
                stars: 38,
              ),
              ButtonSection(),
              TextSection(
                description:
                  'La Laguna Quilotoa es una caldera volcánica con aguas de color turquesa, famosa por sus paisajes impresionantes y actividades como senderismo y kayak. Es uno de los destinos naturales más visitados de Ecuador.',
              ),

              // Ecuador: Baños
              ImageSection(image: 'images/Baños,_Ecuador.jpg'),
              TitleSection(
                name: 'Baños de Agua Santa',
                location: 'Tungurahua, Ecuador',
                stars: 47,
              ),
              ButtonSection(),
              TextSection(
                description:
                  'Baños es conocido por sus aguas termales, cascadas y deportes de aventura como rafting y canopy. Es el punto de partida para explorar la selva amazónica y disfrutar de la naturaleza.',
              ),

              // Ecuador: Cotopaxi
              ImageSection(image: 'images/Vólcan_Cotopaxi.jpg'),
              TitleSection(
                name: 'Volcán Cotopaxi',
                location: 'Cotopaxi, Ecuador',
                stars: 62,
              ),
              ButtonSection(),
              TextSection(
                description:
                  'El Cotopaxi es uno de los volcanes activos más altos del mundo y un ícono de Ecuador. El parque nacional ofrece senderos, vistas espectaculares y la oportunidad de observar flora y fauna andina.',
              ),

              // Ecuador: Galápagos
              ImageSection(image: 'images/galapagos.webp'),
              TitleSection(
                name: 'Islas Galápagos',
                location: 'Archipiélago, Ecuador',
                stars: 99,
              ),
              ButtonSection(),
              TextSection(
                description:
                  'Las Islas Galápagos son famosas por su biodiversidad única y paisajes volcánicos. Es un destino ideal para observar animales exóticos, practicar snorkel y aprender sobre la evolución.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  final String name;
  final String location;
  final int stars;

  const TitleSection({Key? key, required this.name, required this.location, required this.stars})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          Text(stars.toString()),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

// nose
class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}
