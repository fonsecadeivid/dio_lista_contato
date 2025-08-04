import 'package:flutter/material.dart';

import '../ui.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;

  List<Widget> paginas = [
    const RegisterPage(),
    const HomePage(),
    const ProfilePage(),
  ];

  trocarPagina(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 2) {
      // na store função de atualizar a tela
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => trocarPagina(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration),
            label: "Cadastro",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Contatos"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: paginas),
      ),
    );
  }
}
