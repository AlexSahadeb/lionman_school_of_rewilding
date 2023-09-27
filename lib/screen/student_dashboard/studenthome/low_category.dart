import 'package:flutter/material.dart';
class LowCategory extends StatelessWidget {
  const LowCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("low category"),
        ),
      ),
    );
  }
}