import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class AnimationClass extends StatefulWidget {
  @override
  _AnimationClassState createState() => _AnimationClassState();
}

class _AnimationClassState extends State<AnimationClass> {
  double _width=200;
  double _height=200;
  Color _color = Colors.blue;

  void _updateState()
  {

    setState(() {
      _width=400;
      _height=400;
      _color=Colors.pink;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {_updateState();},
            child: Text(
              "Başlat",
              
            ),
          ),
          SizedBox(
            height: 15,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 900),
            curve: Curves.bounceOut,
 width: _width,
 height: _height,
 color: _color,
child: Center(child: Text("Animation"),),
          ),
        ],
      ),
    );
  }
}


