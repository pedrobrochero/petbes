import 'package:flutter/material.dart';

class LoadingLayer extends StatelessWidget {
  const LoadingLayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        child: const Center(child: CircularProgressIndicator()));
  }
}
