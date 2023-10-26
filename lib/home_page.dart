import 'package:flutter/material.dart';
import 'package:uts/item.dart';
import 'package:uts/item_page.dart';


// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gula', price: 12000, image: 'gulaku.jpeg', stock: 30, rating: 4.5),
    Item(
        name: 'Garam', price: 3500, image: 'garam.jpg', stock: 20, rating: 4.2),
    Item(
        name: 'Minyak', price: 18000, image: 'minyak.jpeg', stock: 25, rating: 4.8),

    Item(
      name: 'Kopi', price: 2000, image: 'kopi.jpg', stock: 15, rating: 4.9),

    Item(
      name: 'Beras', price: 50000, image: 'beras.jpg', stock: 3, rating: 4.7),

    Item(
      name: 'Mie Indomie Goreng', price: 3000, image: 'mie.jpg', stock: 50, rating: 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(item: item),
                  ),
                );
              },
              child: Card(
                elevation: 3,
                child: Column(
                  children: [
                    Hero(
                      tag: 'itemImage${item.name}',
                      child: Image.asset(
                        'assets/${item.image}',
                        height: 100,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.attach_money),
                              Text('Price : \ ${item.price.toString()}'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.inventory),
                              Text('Stock : ${item.stock.toString()}'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star),
                              Text('Rating : ${item.rating.toString()}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
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
