import 'package:flutter/material.dart';
import 'package:hw4/data/product_list.dart';
import 'package:hw4/models/product.dart';
import 'second_screen.dart'; // Import your second screen file

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> productList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color.fromARGB(255, 246, 246, 246),
  appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 246, 246, 246),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
      ),
    ],
  ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildProductItem(product1),
                  buildProductItem(product2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildProductItem(product3),
                  buildProductItem(product4),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildProductItem(product5),
                  buildProductItem(product6),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProductItem(Product product) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondScreen(product: product)),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      height: 290,
      width: 170,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.image,
          ),
          const SizedBox(height: 8),
          Text(
            '€${product.price}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            product.brand,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    ),
  );
}
}

