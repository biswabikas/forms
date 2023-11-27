import 'package:flutter/material.dart';
import 'package:forms/data/categories.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text(
                    'Name',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                validator: (value) {
                  return 'Demo...';
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          'Quantity',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      items: [
                        for (final category in categories.entries)
                          DropdownMenuItem(
                            value: category.value,
                            child: Row(
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  color: category.value.color,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(category.value.title)
                              ],
                            ),
                          ),
                      ],
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Reset',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Add item'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
