import 'package:flutter/material.dart';

class customeButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? OnPressed;

  const customeButton({super.key, required this.icon, this.OnPressed, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: OnPressed,
      child: Icon(icon),
    );
  }
}
