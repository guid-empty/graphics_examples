import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: _animation,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xFF072946),
          shape: BoxShape.circle,
        ),
      ),
      builder: (BuildContext context, Widget child) => Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            child: child,
            top: (size.height - 80) * _animation.value,
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = CurvedAnimation(curve: Curves.bounceOut, parent: _animationController);
    _animationController.repeat();
  }
}
