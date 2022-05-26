import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartipacaPage extends StatelessWidget {
  const PartipacaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const lorem =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec tellus non ante vehicula sollicitudin. Quisque leo est, finibus consectetur convallis vitae, mollis a lacus. ';
    const urlImagem =
        'https://images.pexels.com/photos/5029856/pexels-photo-5029856.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
    const urlAnimation =
        'https://cdn.dribbble.com/users/112330/screenshots/17581983/media/d0263361cc3b0a043581e8529f94980f.png?compress=1&resize=1200x900&vertical=top';

    return Scaffold(
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.all(16),
          height: 300,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(urlImagem),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Text(
            'ParticipAção',
            style: GoogleFonts.telex(
              fontSize: 48,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Text(
            lorem,
            style: GoogleFonts.handlee(fontSize: 24),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          height: 250,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(urlAnimation),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Text(
            'Conheça nosso projeto',
            style: GoogleFonts.telex(
              fontSize: 36,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Text(
            lorem + lorem,
            style: GoogleFonts.handlee(fontSize: 24),
            textAlign: TextAlign.justify,
          ),
        ),
      ]),
    );
  }
}
