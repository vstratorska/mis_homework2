import 'package:flutter/material.dart';

class DetailBackButton extends StatelessWidget {
  const DetailBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Color.fromRGBO(0, 58, 144, 1.0),
        tooltip: 'Go back to previous screen',
        icon: const Icon(Icons.arrow_back, color: Colors.black,),
        label: const Text("Back", style: TextStyle(color: Colors.black),
        ));
  }
}
