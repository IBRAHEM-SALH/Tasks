import 'package:flutter/material.dart';
import 'package:tasks/models/product.dart';

class Details extends StatelessWidget {
  final Product product;
  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      // 1 title  text
      // 2 image image . network
      // 3 price text string
      // 4 description string
      // 5 category string
      // 6 rating string
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
               Image.network(product.image ?? "NO image",
                  width: 100, height: 100, fit: BoxFit.cover),
              Text(product.title ?? "NO title",
                  style: const TextStyle(fontSize: 16, color: Colors.orange)),
              SizedBox(height: 10),
            
              Text(product.price?.toString() ?? "NOt found price ",
                  style: const TextStyle(fontSize: 16)),
              SizedBox(
                height: 10,
              ),
              Text(product.description ?? "not found description",
                  style: const TextStyle(fontSize: 16, color: Colors.orange)),
              SizedBox(
                height: 10,
              ),
              Text(product.category ?? " no category",
                  style: const TextStyle(fontSize: 16, color: Colors.orange)),
              SizedBox(
                height: 10,
              ),
              Text(
                  product.rating?.rate?.toStringAsFixed(1) ??
                      "not found rating",
                  style: const TextStyle(fontSize: 16, color: Colors.orange)),
            ],
          ),
        ),
      ),
    );
  }
}
