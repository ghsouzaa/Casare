import 'package:Casare/UI/tela_dos_noivos_widget.dart';
import 'package:flutter/material.dart';
import 'UI/tela_de_inicio_widget.dart';
import 'UI/tela_do_local_widget.dart';
import 'UI/tela_dos_presentes_widget.dart';
import 'UI/tela_presenca.dart';
import 'configs/pallete.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  //
  static const String _title = 'Casare';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        theme: ThemeData(primaryColor: Pallete.rosaEscuro,
        accentColor: Pallete.rosaEscuro,
        accentColorBrightness: Brightness.light),
        home: HomeStatefulWidget(),
      );
}

class HomeStatefulWidget extends StatefulWidget {
  //
  HomeStatefulWidget({Key key}) : super(key: key);

  @override
  _HomeStatefulWidgetState createState() => _HomeStatefulWidgetState();
}

class _HomeStatefulWidgetState extends State<HomeStatefulWidget> {
  //
  int _selectedIndex = 0;

  List<Widget> telas = <Widget>[
    TelaDeInicioWidget(),
    TelaDosNoivosWidget(),
    TelaDoLocalWidget(),
    TelaDosPresentesWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: Pallete.rosaClaro,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Pallete.rosaEscuro,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Início')),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('Noivos')),
          BottomNavigationBarItem(icon: Icon(Icons.pin_drop), title: Text('Local')),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), title: Text('Presentes')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: (int index) => setState(() => _selectedIndex = index),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: telas.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPresencaWidget())),
        child: Icon(Icons.check),
        backgroundColor: Pallete.verde,
      ),
    );
  }
}
