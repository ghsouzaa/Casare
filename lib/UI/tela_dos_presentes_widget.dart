import 'package:flutter/material.dart';

class TelaDosPresentesWidget extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 75),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(title: Text('Visitar Torre Eiffel'), subtitle: Text('RS 150,00')),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                    child: const Text('PRESENTEAR'),
                    onPressed: () => print('PRESENTER'),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ],
          ),
        ),
      );
}
