import 'package:flutter/material.dart';

final searchBody = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: 
    [const Text("Flutter",
    style: TextStyle(fontSize: 20),
    textAlign: TextAlign.center,
    ),
    Container(
      padding: const EdgeInsets.all(50),  
      child: Image.asset("images/flutter_logo.png")
      ),
    Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 100),
      child: const Text("Flutter es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para crear aplicaciones para Google Fuchsia.​",
      textAlign: TextAlign.justify,
      ),
    ),
  ],
);

Widget publicBody = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: const Text("Mi nombre es Nicolás",
        style: TextStyle(fontSize: 36),
        textAlign: TextAlign.center,
      ),
    ),
    Image.asset("images/nico.jpg",
    height: 350,
    width: 100,
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
      child: const Text("Tengo 22 años",
      style: TextStyle(fontSize: 18),
      textAlign: TextAlign.center,
      ),
    ),
    const Text("Soy Ingeniero en Nanotecnología",
    style: TextStyle(fontSize: 18),
    textAlign: TextAlign.center,
    ),
  ],
);

final homeBody = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Image.asset("images/retos.jpg",
    height: 300,
    width: 900,
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 100),
      child: const Text("Este es mi reto de la semana 2",
      style: TextStyle(fontSize:20),
      textAlign: TextAlign.center,
      ),
    ),
  ],
);

List <Widget> bodylist = [
  searchBody,
  homeBody,
  publicBody,
];

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Reto Semana 2')
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.purple,
              ),
              label:'Search',
              tooltip: 'Search',
            ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.purple,
              ),
              label:'Home',
              tooltip: 'Home',
            ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.public,
              color: Colors.purple,
              ),
              label:'Public',
              tooltip: 'Public',
            ),
          ],
        ),
      body: bodylist[index],
    );
  }
}
