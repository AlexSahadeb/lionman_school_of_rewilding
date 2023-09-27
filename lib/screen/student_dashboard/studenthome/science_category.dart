import 'package:flutter/material.dart';
class ScienceCategory extends StatelessWidget {
  const ScienceCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Science category"),
        ),
      ),
    );
  }
}