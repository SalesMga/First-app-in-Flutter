import 'package:flutter/material.dart';
import 'exemplo.dart';

void main() => runApp(MeuApp());

@override
class MeuApp extends StatelessWidget {

  callAction(){}
  mapAction(){}
  shareAction(){}
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Facebook'),
      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage('assets/muro.jpg')),
          Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'kotel',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text('Jerusalem, Israel',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey))
                        ],
                      )),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.blue),
                      Text('9.876')
                    ],
                  )
                ],
              )),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Botao(
                  icon: Icons.call,
                  text: 'Ligar',
                  onPress: callAction,
                ),
                Botao(
                  icon: Icons.location_on,
                  text: 'Mapa',
                  onPress: mapAction,
                ),
                Botao(
                  icon: Icons.share,
                  text: 'Compartilhar',
                  onPress: shareAction,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic '),
          )
        ],
      ),
    ),
  );
}}

class Botao extends StatelessWidget {
  Botao({this.onPress, @required this.icon, @required this.text});

  Function onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FlatButton(
            onPressed: onPress,
            child: Column(
              children: [
                Icon(icon, color: Colors.blue),
                Text(text)
              ],
            )));
  }
}
