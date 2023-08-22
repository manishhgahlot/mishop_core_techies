import 'package:core_techies/custom_widgets/custom_grid_item.dart';
import 'package:core_techies/screens/Add_to_Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 140,
        backgroundColor: Colors.blueGrey.shade100,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.black),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {
                // Handle filter button tap
              },
              icon: const Icon(IconlyLight.filter, color: Colors.black),
            ),
          ],
        ),
        actions: [],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 197, 196, 196)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('123 Results'),
                Spacer(),
                Icon(Icons.arrow_drop_up),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: 6, // Number of items
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _navigateToButtomBarScreen(context, index);
                  },
                  child: CustomGridViewItem(
                    imagePath: 'assets/items/item_$index.png',
                    itemName: '${index + 1}',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _navigateToButtomBarScreen(BuildContext context, int index) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => AddToCart(index: index),
    ),
  );
}
