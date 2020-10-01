import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Casare';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const Color rosaEscuro = Color(0xffE2799B);
  static const Color rosaClaro = Color(0xffF9F1EE);

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, color: rosaEscuro);
  static const List<Widget> _appBarTitles = <Widget>[
    Text(
      'Início',
      style: optionStyle,
    ),
    Text(
      'Noivos',
      style: optionStyle,
    ),
    Text(
      'Local',
      style: optionStyle,
    ),
    Text(
      'Presentes',
      style: optionStyle,
    ),
  ];

  static const TextStyle optionStyleTelas =
      TextStyle(fontSize: 14, color: Colors.black);
  static const List<Widget> _telas = <Widget>[
    Text(
      'Criamos esse App para compartilhar com vocês os detalhes da organização do nosso casamento. Estamos muito felizes e contamos com a presença de todos no nosso grande dia! Aqui vocês encontrarão também informações sobre o local, data e hora. Ah, é importante também confirmar sua presença. Para isto contamos com sua ajuda clicando no menu no botão flutuante da lista e preenchendo os dados necessários. Para nos presentear, escolha qualquer item da Lista de Casamento, seja um item de algum dos sites, lojas físicas, ou então vocês podem utilizar a opção de cotas. Fiquem à vontade! Aguardamos vocês no nosso grande dia!',
      style: optionStyleTelas,
    ),
    Text(
      'Noivos',
      style: optionStyleTelas,
    ),
    Text(
      'Local',
      style: optionStyleTelas,
    ),
    Text(
      'Presentes',
      style: optionStyleTelas,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rosaClaro,
      appBar: AppBar(
        title: _appBarTitles.elementAt(_selectedIndex),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _telas.elementAt(_selectedIndex),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: rosaEscuro,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Início'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Noivos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop),
            title: Text('Local'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('Presentes'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.check),
        backgroundColor: Colors.green,
      ),
    );
  }
}
