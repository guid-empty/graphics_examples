import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  final String initialAnimation;

  const Home({Key key, this.initialAnimation = 'to100'}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  String _currentAnimation;

  @override
  void initState() {
    super.initState();

    _currentAnimation = widget.initialAnimation;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlareActor(
        'assets/flare/justtry.progress_indicator.flr',
        fit: BoxFit.scaleDown,
        animation: _currentAnimation,
        alignment: Alignment.center,
      ),
    );
  }
}