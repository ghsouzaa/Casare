import 'package:flutter/material.dart';
import 'configs/pallete.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Casare';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(primaryColor: Colors.pink),
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
  int _selectedIndex = 0;

  static const TextStyle optionStyleTelas =
      TextStyle(fontSize: 15, color: Pallete.cinzaTexto);
  static List<Widget> _telas = <Widget>[
    Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
//################################################################################
//################################ TELA DE INICIO ################################
//################################################################################

          Image.asset("assets/images/gabline.png"),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(style: optionStyleTelas, children: [
                TextSpan(
                  text:
                      'Criamos esse App para compartilhar com vocês os detalhes da organização do nosso casamento. Estamos muito felizes e contamos com a presença de todos no nosso grande dia!',
                ),
                TextSpan(
                  text:
                      '\n\nAqui vocês encontrarão também informacoes sobre o local, data e hora do evento.',
                ),
                TextSpan(
                  text:
                      '\n\nAh, é importante também confirmar sua presença. Para isto contamos com sua ajuda clicando no ',
                ),
                TextSpan(
                    text: 'Botão ',
                    style: TextStyle(
                        color: Pallete.verde, fontWeight: FontWeight.bold)),
                WidgetSpan(
                  child: Icon(
                    Icons.check_circle,
                    size: 18,
                    color: Pallete.verde,
                  ),
                ),
                TextSpan(
                  text: ' e preenchendo os dados necessários.',
                ),
                TextSpan(
                  text:
                      '\n\nPara nos presentear, escolha qualquer item da Lista de Casamento, seja um item de algum dos sites, lojas físicas, ou então vocês podem utilizar a opção de cotas. Fiquem à vontade!',
                ),
                TextSpan(
                    text: '\n\nAguardamos vocês no nosso grande dia!',
                    style: TextStyle(
                        color: Pallete.rosaEscuro,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ]),
            ),
          )
        ],
      ),
    ),

//################################################################################
//################################ TELA DOS NOIVOS ###############################
//################################################################################

    Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(2),
            child: Image.asset("assets/images/gabline.png"),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset("assets/images/gabline2.png"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset("assets/images/gabline3.png"),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Image.asset("assets/images/gabline4.png"),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 75),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: optionStyleTelas,
                  children: [
                    TextSpan(
                        text:
                            'Histórias de amor existem, e, às vezes, nem nós mesmos acreditamos todo o tempo que já estamos juntos. Porém, o brilho intenso e apaixonado dos nossos olhares nos fazem lembrar o porquê de chegarmos até aqui sem sentir tanto o tempo passar....'),
                    TextSpan(
                        text:
                            '\n\nVamos nos casar! Estamos preparando tudo com muito carinho para curtirmos cada momento com nossos amigos e familiares queridos!')
                  ],
                ),
              ))
          // Text(
          //   textAlign: TextAlign.justify,
          //   text:
          //       "Histórias de amor existem, e, às vezes, nem nós mesmos acreditamos todo o tempo que já estamos juntos. Porém, o brilho intenso e apaixonado dos nossos olhares nos fazem lembrar o porquê de chegarmos até aqui sem sentir tanto o tempo passar....Vamos nos casar! Estamos preparando tudo com muito carinho para curtirmos cada momento com nossos amigos e familiares queridos!",
          // ),
        ],
      ),
    ),

//################################################################################
//################################ TELA DE LOCAL #################################
//################################################################################

    Text(
      'Local',
      style: optionStyleTelas,
    ),

//################################################################################
//################################ TELA DE PRESENTES #############################
//################################################################################

    Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 75),
      child: (Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text('Visitar Torre Eiffel'),
              subtitle: Text('RS 150,00'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: const Text('PRESENTEAR'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      )),
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
      backgroundColor: Pallete.rosaClaro,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: _telas.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Pallete.rosaEscuro,
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
        backgroundColor: Pallete.verde,
      ),
    );
  }
}

class TextButton {}
