import 'package:flutter/material.dart';
import 'package:hw4/models/product.dart';

class SecondScreen extends StatefulWidget {
  final Product product;

  SecondScreen({Key? key, required this.product}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      widget.product.image,
                      height: 500,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '€${widget.product.price}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.product.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.product.brand,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    // Add more details as needed
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            height: 30,
            width: 20,
            bottom: 40.0,
            right: 300.0,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : null,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ),
          Positioned(
            bottom: 25.0,
            right: 35.0,
            child: ElevatedButton(
              onPressed: () {
                // Handle add to cart action
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFe2ceb6), // Set your desired button color here
              ),
              child: Text('Add to cart'),
            ),
          ),
        ],
      ),
    );
  }
}
