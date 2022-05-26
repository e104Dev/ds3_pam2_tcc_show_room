import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Fale Conosco',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: const TextField(
              decoration: InputDecoration(
                filled: true,
                label: Text('Nome'),
                hintText: 'Nome',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: const TextField(
              decoration: InputDecoration(
                filled: true,
                label: Text('Email'),
                hintText: 'Seu email pessoal',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                filled: true,
                label: Text('Conteúdo'),
                hintText: 'Conta pra gente o que você quiser!',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: 250,
                    color: Colors.white,
                  ),
                );
              },
              child: Text('ENVIAR'),
            ),
          )
        ],
      ),
    );
  }
}
