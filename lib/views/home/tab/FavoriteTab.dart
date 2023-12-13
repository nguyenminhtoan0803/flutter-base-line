import 'package:flutter/material.dart';

class CardTab extends StatelessWidget {
  const CardTab({ super.key });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.yellow,
        child: const Center(
          child: Text('Favorite'),
        ),
      ),
    );
  }
}