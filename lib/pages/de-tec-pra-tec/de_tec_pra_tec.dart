import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeTecPraTecPage extends StatelessWidget {
  const DeTecPraTecPage({Key? key, required this.index}) : super(key: key);

  final int index;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Projeto: De Tec pra Tec'),
    ),
      body: Container(
      child:
        Center(
        child: Column(
          children: [
            Image.network('https://img.freepik.com/vetores-gratis/jovens-conversando-com-dispositivos_23-2148447306.jpg?t=st=1654217037~exp=1654217637~hmac=e565cc46bb811239bbf2b91cc138608867cf5ab90c000db42cc9e947d49e02a5&w=740',  width: 500),
            
            Padding(padding: EdgeInsets.all(50),
            child:
              Text("O projeto de Tec pra tec, busca melhorar a comunicação dos alunos da ETEC. Para que eles possam se beneficiar por meio de projetos interdisciplinares, participação em feiras entre outros coisas.", style: GoogleFonts.inconsolata(fontStyle: FontStyle.normal, fontSize: 30),
               ),
              ),
            ],
            ),
          )
        )
     );
  }
  
}