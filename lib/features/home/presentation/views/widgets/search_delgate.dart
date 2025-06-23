import 'package:book_store/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = '';
        }
      },
      icon: const Icon(Icons.clear),
    ),
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    onPressed: () => close(context, null),
    icon: const Icon(Icons.arrow_back),
  );

  @override
  Widget buildResults(BuildContext context) =>
      Center(child: Text(query, style: const TextStyle(fontSize: 64)));

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      'History',
      'Fantasy',
      'Horror',
      'Romance',
      'Science Fiction',
    ];

    return Column(
      children: [
        SizedBox(height: 15),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Search Suggestions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return BestSellerItem();
            },
          ),
        ),
      ],
    );
  }
}
