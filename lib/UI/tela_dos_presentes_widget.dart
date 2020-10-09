import 'package:Casare/configs/pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tela_pagamento.dart';

class TelaDosPresentesWidget extends StatelessWidget {
  static const torre = "assets/images/torre.png";
  static const aviao = "assets/images/aviao.png";

  // List<Widget> cardsPresentes = <Widget>[
  //   Padding(
  //     padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
  //     child: Card(
  //       elevation: 20,
  //       shadowColor: Pallete.rosaEscuro,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: <Widget>[
  //           Image.asset(torre),
  //           const ListTile(title: Text('Visitar Torre Eiffel'), subtitle: Text('RS 150,00')),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: <Widget>[
  //               FlatButton(
  //                 child: Text('PRESENTEAR'),
  //                 textColor: Pallete.rosaEscuro,
  //                 splashColor: Pallete.rosaClaro,
  //                 onPressed: () => print('PRESENTE'),
  //               ),
  //               const SizedBox(width: 16),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   ),
  //   Padding(
  //     padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
  //     child: Card(
  //       elevation: 20,
  //       shadowColor: Pallete.rosaEscuro,
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         children: <Widget>[
  //           Image.asset(aviao),
  //           const ListTile(title: Text('Passagem para Amsterda'), subtitle: Text('RS 100,00')),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: <Widget>[
  //               FlatButton(
  //                 child: Text('PRESENTEAR'),
  //                 textColor: Pallete.rosaEscuro,
  //                 splashColor: Pallete.rosaClaro,
  //                 onPressed: () {
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(builder: (context) => TelaPagamentoWidget()),
  //                   );
  //                 },
  //               ),
  //               const SizedBox(width: 16),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   )
  // ];

  @override
  Widget build(BuildContext context) =>
  Padding(
    padding: EdgeInsets.fromLTRB(15, 15, 15, 75),
    child:
    Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: Card(
            elevation: 20,
            shadowColor: Pallete.shadowCards,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(torre),
                const ListTile(title: Text('Visitar Torre Eiffel'), subtitle: Text('RS 150,00')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      child: Text('PRESENTEAR'),
                      textColor: Pallete.rosaEscuro,
                      splashColor: Pallete.rosaClaro,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaPagamentoWidget()),
                        );
                      },
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: Card(
            elevation: 20,
            shadowColor: Pallete.shadowCards,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(aviao),
                const ListTile(title: Text('Passagem para Amsterda'), subtitle: Text('RS 100,00')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      child: Text('PRESENTEAR'),
                      textColor: Pallete.rosaEscuro,
                      splashColor: Pallete.rosaClaro,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaPagamentoWidget()),
                        );
                      },
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
