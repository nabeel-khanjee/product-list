import 'package:flutter/material.dart';
import 'package:softtech_test/src/app/app_export.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.args});
  final ProductDetailArgs args;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Container(
          child: Text(args.id.toString()),
        ),
        isGradient: false);
  }
}

class ProductDetailArgs {
  final int id;

  ProductDetailArgs({required this.id});
}
