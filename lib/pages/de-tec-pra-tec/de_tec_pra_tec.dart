import 'package:flutter/material.dart';

class DeTecPraTecPage extends StatelessWidget {
  const DeTecPraTecPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
        child: Text("O projeto de Tec pra tec, busca melhorar a comunicação dos alunos da ETEC. Para que eles possam se beneficiar por meio de projetos interdisciplinares, participação em feiras entre outros coisas."),
     )
    );
  }
}