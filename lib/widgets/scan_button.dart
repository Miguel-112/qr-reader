import 'package:flutter/material.dart';

class ScaButton extends StatelessWidget {
  const ScaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: Icon(Icons.filter_center_focus),
      onPressed: () {},
    );
  }
}
