import 'package:ds3_pam2_tcc_show_room/pages/contact/contact.dart';
import 'package:ds3_pam2_tcc_show_room/pages/home/sample.dart';
import 'package:ds3_pam2_tcc_show_room/participacao/participacao.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pages = [
    Container(color: Colors.yellow),
    const PartipacaPage(),
    const SamplePage(),
    const ContactPage(),
  ];

  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrange,
                Colors.pink,
              ],
            ),
          ),
        ),
        title: const Text('Show Room'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.pink,
                  ],
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/879109/pexels-photo-879109.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                ),
              ),
              accountName: Text('Samuel Ribeiro'),
              accountEmail: Text('samuel@gmail.com'),
            ),
            const Text(
              'Nome do Projeto',
              style: TextStyle(fontSize: 24),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('meutime@gmail.com'),
              subtitle: Text('E-mail de contato'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+5519999997687'),
              subtitle: Text('Celular'),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('http://www.meutime.com.br'),
              subtitle: Text('Home page'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const SamplePage())));
              },
            ),
          ],
        ),
      ),
      body: pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp), label: 'Projetos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_support_outlined), label: 'Contato'),
        ],
      ),
    );
  }
}
