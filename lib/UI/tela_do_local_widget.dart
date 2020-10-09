import 'package:Casare/configs/pallete.dart';
import 'package:Casare/configs/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaDoLocalWidget extends StatelessWidget {
  static const map = "assets/images/mapa.png";

  //
  @override
  Widget build(BuildContext context) => Container(
        color: Pallete.shadowCards,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 75),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Card(
                elevation: 20,
                shadowColor: Pallete.shadowCards,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.all(15),
                      title: Text(
                        'Casa das Pedras',
                        style: TextStyle(fontSize: 22),
                      ),
                      subtitle: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(style: Styles.optionsTelas, children: [
                          TextSpan(
                            text:
                                'Av. Cerrados (Jd Cerrados), 9 - 23 de Setembro, Várzea Grande - MT, 78115-851',
                          ),
                          TextSpan(
                            text:
                                '\n\nOs noivos convidam para recepção no dia 24 de julho de 2021, na Casa das Pedras. A partir de 16h30.',
                          ),
                        ]),
                      ),
                    ),
                    Image.asset(map),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          child: Text('ABRIR MAPS'),
                          textColor: Pallete.rosaEscuro,
                          splashColor: Pallete.rosaClaro,
                          onPressed: () {
                            print("teste");
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => TelaPagamentoWidget()),
                            // );
                          },
                        ),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
