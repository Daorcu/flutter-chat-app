import 'package:flutter/material.dart';

class MensajeChat extends StatelessWidget {
  final String texto;
  final String uid;
  final AnimationController animationController;

  const MensajeChat({
    Key key,
    @required this.texto,
    @required this.uid,
    @required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: animationController,
          curve: Curves.elasticOut,
        ),
        child: Container(
          child: this.uid == '123' ? _miMensaje() : _suMensaje(),
        ),
      ),
    );
  }

  Widget _miMensaje() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(
          right: 15,
          left: 60,
          top: 1,
          bottom: 5,
        ),
        padding: EdgeInsets.all(8),
        child: Text(this.texto, style: TextStyle(color: Colors.white)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff4D9EF6),
        ),
      ),
    );
  }

  Widget _suMensaje() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: 15,
          right: 60,
          top: 1,
          bottom: 5,
        ),
        padding: EdgeInsets.all(8),
        child: Text(this.texto, style: TextStyle(color: Colors.white)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepPurple[300],
        ),
      ),
    );
  }
}
