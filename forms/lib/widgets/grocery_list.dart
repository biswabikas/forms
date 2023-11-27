import 'package:flutter/material.dart';
import 'package:forms/data/dummy_items.dart';
import 'package:forms/widgets/new_items.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  void additem() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NewItem(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Groceries',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: additem,
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              groceryItems[index].name,
              style: TextStyle(color: Colors.white),
            ),
            leading: Container(
              height: 24,
              width: 24,
              color: groceryItems[index].category.color,
            ),
            trailing: Text(
              groceryItems[index].quantity.toString(),
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
