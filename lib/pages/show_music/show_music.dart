import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowMusic extends StatelessWidget {
  const ShowMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const urlImage =
        'https://images.pexels.com/photos/2034851/pexels-photo-2034851.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';

    const urlImage2 =
        'https://images.pexels.com/photos/1928131/pexels-photo-1928131.jpeg?cs=srgb&dl=pexels-ruslan-alekso-1928131.jpg&fm=jpg';

    const texto =
        'O website do projeto irá beneficiar cantores solos, mas também bandas e estabelecimentos, o site será capaz de divulgar cantores e shows em locais comerciais, contribuindo financeiramente e atraindo mais pessoas culturalmente. Com a utilização do website é mais proficiente que empresas utilizem o processo de contratação por meio de computadores.';

    return Scaffold(
        body: ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          height: 300,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(urlImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Shows Musicais',
            style:
                GoogleFonts.lobster(fontSize: 48, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            texto,
            style: GoogleFonts.arapey(fontSize: 24),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Conheça nosso projeto',
            style:
                GoogleFonts.lobster(fontSize: 48, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          height: 300,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(urlImage2), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            texto,
            style: GoogleFonts.arapey(fontSize: 24),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    ));
  }
}
