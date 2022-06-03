import 'package:ds3_pam2_tcc_show_room/pages/de-tec-pra-tec/de_tec_pra_tec.dart';
import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        'https://images.pexels.com/photos/2886010/pexels-photo-2886010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('AppBar'),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.add),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.refresh),
      //       onPressed: () {},
      //     )
      //   ],
      // ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (contexto, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: Text('Título do Card ${index + 1}'),
                    subtitle: const Text('Lorem ipsum dolor sit amet'),
                    leading: const Icon(Icons.favorite),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 16),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        child: const Text('Saiba mais'),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => DeTecPraTecPage(index: index)),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
