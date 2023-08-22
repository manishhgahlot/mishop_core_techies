import 'package:core_techies/custom_widgets/custom_grid_item.dart';
import 'package:core_techies/custom_widgets/custom_image.dart';
import 'package:core_techies/custom_widgets/row_box.dart';
import 'package:core_techies/screens/iteam_grid_view.dart';
import 'package:core_techies/screens/Add_to_Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0, // Remove app bar shadow
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(
              IconlyLight.location,
              color: Color(0xFF00A489),
              size: 35,
            ),
            const SizedBox(width: 8),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deliver to',
                  style: TextStyle(
                      color: Color.fromARGB(255, 59, 59, 59), fontSize: 12),
                ),
                Text(
                  'F-10, New Housing Colony, Noida',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(IconlyLight.notification),
              color: const Color.fromARGB(255, 22, 20, 20),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 25 + 40 + 16, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(IconlyLight.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0), // Rounded edges
                ),
              ),
            ),
            const SizedBox(height: 8), // Space between search box and image row

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageWidget(imagePath: 'assets/image/sale1.jpg'),
                  SizedBox(
                    width: 6,
                  ),
                  CustomImageWidget(imagePath: 'assets/image/sale1.jpg')
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomBox(
                    text: "soft drink",
                    Text: '',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomBox(
                    text: "Grocery",
                    Text: '',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomBox(
                    text: "cosmetics",
                    Text: '',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CustomBox(
                    text: "Kitchen",
                    Text: '',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Most Selling Items',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ItemGridView()), // Remove the const keyword here
                    );
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 1), // Add spacing between sections,

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
