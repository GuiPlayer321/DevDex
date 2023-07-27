import 'package:flutter/material.dart';

void main() => runApp(AllPokemon());

class AllPokemon extends StatelessWidget {
  const AllPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodosPokemon());
  }
}

class TodosPokemon extends StatelessWidget {
  const TodosPokemon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(204, 192, 10, 0),
          toolbarHeight: 60,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.pngplay.com/wp-content/uploads/2/Pokeball-PNG-Pic-Background.png',
                height: 50,
              ),
              Text('DevDex'),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () => print('filtros'),
                icon: Icon(Icons.manage_search))
          ],
        ),
        drawer: Drawer(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => print('perfil'),
                  child: Text('Perfil'),
                  style: TextButton.styleFrom(
                      foregroundColor: Color.fromARGB(204, 192, 10, 0)),
                ),
                TextButton(
                  onPressed: () => print('favoritos'),
                  child: Text('Favoritos'),
                  style: TextButton.styleFrom(
                      foregroundColor: Color.fromARGB(204, 192, 10, 0)),
                ),
                TextButton(
                  onPressed: () => print('time'),
                  child: Text('Meu time'),
                  style: TextButton.styleFrom(
                      foregroundColor: Color.fromARGB(204, 192, 10, 0)),
                ),
                TextButton(
                  onPressed: () => print('pegos'),
                  child: Text('Pegos'),
                  style: TextButton.styleFrom(
                      foregroundColor: Color.fromARGB(204, 192, 10, 0)),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.pngmart.com/files/13/Pokemon-Charmander-PNG-Pic.png',
                height: 100,
              ),
              Text('Charmander'),
              Text('#004'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PokemonStats()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(204, 192, 10, 0))),
                  child: Text('Ver mais'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(204, 192, 10, 0),
          onPressed: () => print('cliquei'),
          child: Icon(Icons.search),
        ),
      )),
    );
  }
}

class PokemonStats extends StatelessWidget {
  const PokemonStats({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.network(
                'https://www.pngmart.com/files/13/Pokemon-Charmander-PNG-Pic.png',
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PokemonStats()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(204, 192, 10, 0))),
                  child: Text('Ver mais'))
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(204, 192, 10, 0),
          toolbarHeight: 60,
          title: Text('Stats'),
        ),
      ),
    );
  }
}
