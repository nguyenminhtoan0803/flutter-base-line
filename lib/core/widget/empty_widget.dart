import 'package:flutter/material.dart';

import 'package:demo/core/app_asset.dart';
import 'package:demo/core/style/app_style.dart';

class EmptyWidget extends StatelessWidget {
  final String message;
  
  const EmptyWidget({Key? key, required this.message}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(AppAsset.emptyState),
          Text(message, style: headLine1,)
        ],
      ),
    );
  }
}