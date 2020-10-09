import 'package:Casare/configs/styles.dart';
import 'package:flutter/material.dart';

class TelaDosNoivosWidget extends StatelessWidget {
  //
  static const fotoGabline = "assets/images/gabline.png";
  static const fotoGabline2 = "assets/images/gabline2.png";
  static const fotoGabline3 = "assets/images/gabline3.png";
  static const fotoGabline4 = "assets/images/gabline4.png";
  static const fotoGabline5 = "assets/images/gabline5.png";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset(fotoGabline2),
              ),
              Expanded(
                child: Image.asset(fotoGabline3),
              ),
              // Expanded(
              //   child: Image.asset(fotoGabline4),
              // ),
            ],
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: Styles.optionsTelas,
                  children: [
                    TextSpan(
                        text: 'Histórias de amor existem, e, às vezes, nem nós mesmos acreditamos '
                            'todo o tempo que já estamos juntos. Porém, o brilho intenso e '
                            'apaixonado dos nossos olhares nos fazem lembrar o porquê de '
                            'chegarmos até aqui sem sentir tanto o tempo passar....'),
                    TextSpan(
                        text: '\n\nVamos nos casar! Estamos preparando tudo com muito carinho '
                            'para curtirmos cada momento com nossos amigos e familiares queridos!')
                  ],
                ),
              )
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(fotoGabline5),
              ),
    Expanded(
      child: Image.asset(fotoGabline4),
    ),
            ],
          )
        ],
      ),
    );
  }
}
