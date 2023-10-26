import 'package:flutter/material.dart';
import 'package:uts/item.dart';

 class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'itemImage${item.name}',
              child: Image.asset(
                'assets/${item.image}',
                height: 300,
              ),
            ),
            const SizedBox(height: 20), // Add spacing between image and text
            Text(
              'Item Name : ${item.name}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), // Add spacing
            Text(
              'Item Price : \ ${item.price.toString()}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Item Stock : ${item.stock.toString()}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange, // Customize the star icon color
                  size: 24,
                ),
                Text(
                  'Item Rating : ${item.rating.toString()}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Mirza Priscilla Faradiba - NIM : 2141720254',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}