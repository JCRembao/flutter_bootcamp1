import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeColorsPage extends StatefulWidget {
  @override
  _ChangeColorsPageState createState() => _ChangeColorsPageState();
}

class _ChangeColorsPageState extends State<ChangeColorsPage> {
  int _number = 0;
  Color _color = Colors.red;
  
  AppBar _appBar(){
    return AppBar(title: Text("Change Colors"));
  }

  Widget _body() {
    return Container(child: Center(child: Text("number $_number", style: TextStyle(fontSize: 30, color: _color))));
  }

  Widget _fabIncrement() {
    return FloatingActionButton.extended(onPressed: _incrementNumber, label: Text("Increment"), icon: Icon(Icons.exposure_plus_1));
  }

  Widget _fabDecrement() {
    return FloatingActionButton.extended(onPressed: _decrementNumber, label: Text("Decrement"), icon: Icon(Icons.exposure_minus_1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
        _fabIncrement(),
        SizedBox(height: 15),
        _fabDecrement()
      ],),
    );
  }

  void _incrementNumber(){
    _number++;
    _changeColor();
      setState(() {
    });
  }

  void _decrementNumber(){
    _number--;
    _changeColor();
    setState(() {
    });
  }

  void _changeColor(){
    if(_color == Colors.red) {_color = Colors.blue;}
    else if(_color == Colors.blue) {_color = Colors.red;}
  }
}
