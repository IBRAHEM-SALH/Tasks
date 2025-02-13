import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final dynamic product;

  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // صورة المنتج
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product.image ?? "",
                  width: 150,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported, size: 50, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // اسم المنتج
              Text(
                product.title ?? "No title available",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),

              // السعر
              Text(
                product.price != null ? "\$${product.price!.toStringAsFixed(2)}" : "Price not available",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // الوصف
              Text(
                product.description ?? "No description available",
                style: const TextStyle(fontSize: 14, color: Colors.black87),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),

              // الفئة
              Row(
                children: [
                  const Icon(Icons.category, color: Colors.blueGrey, size: 20),
                  const SizedBox(width: 5),
                  Text(
                    product.category ?? "No category",
                    style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // التقييم
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 20),
                  const SizedBox(width: 5),
                  Text(
                    product.rating?.rate?.toStringAsFixed(1) ?? "No rating",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
