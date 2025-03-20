import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class IncomingAllPage extends StatelessWidget {
  const IncomingAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          generateBluredImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rectShapeContainer(),
            ],
          )
        ],
      ),
    );
  }

  Widget generateBluredImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/download22.png"),
              fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
        ),
      ),
    );
  }

  Widget rectShapeContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.5),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                offset: Offset(5.0, 5.0),
              ),
            ]),
        child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage("assets/images/de.png"),
              ))
        ]),
      ),
    );
  }
}
