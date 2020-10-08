import 'package:Casare/configs/pallete.dart';
import 'package:Casare/configs/styles.dart';
import 'package:flutter/material.dart';

class TelaDeInicioWidget extends StatelessWidget {
  //
  static const fotoGabline = "assets/images/gabline.png";

  @override
  Widget build(Object context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(fotoGabline),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(style: Styles.optionsTelas, children: [
                TextSpan(
                  text: 'Criamos esse App para compartilhar com vocês os detalhes da '
                      'organização do nosso casamento. Estamos muito felizes e contamos com a '
                      'presença de todos no nosso grande dia!',
                ),
                TextSpan(
                  text: '\n\nAqui vocês encontrarão também informacoes sobre o local, '
                      'data e hora do evento.',
                ),
                TextSpan(
                  text: '\n\nAh, é importante também confirmar sua presença. '
                      'Para isto contamos com sua ajuda clicando no ',
                ),
                TextSpan(
                  text: 'Botão ',
                  style: TextStyle(color: Pallete.verde, fontWeight: FontWeight.bold),
                ),
                WidgetSpan(
                  child: Icon(Icons.check_circle, size: 18, color: Pallete.verde),
                ),
                TextSpan(
                  text: ' e preenchendo os dados necessários.',
                ),
                TextSpan(
                  text: '\n\nPara nos presentear, escolha qualquer item da Lista de Casamento, '
                      'seja um item de algum dos sites, lojas físicas, ou então vocês '
                      'podem utilizar a opção de cotas. Fiquem à vontade!',
                ),
                TextSpan(
                  text: '\n\nAguardamos vocês no nosso grande dia!',
                  style: TextStyle(
                    color: Pallete.rosaEscuro,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

