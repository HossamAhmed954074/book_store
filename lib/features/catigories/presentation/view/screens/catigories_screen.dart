import 'package:book_store/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class CatigoriesScreen extends StatelessWidget {
  CatigoriesScreen({super.key});

  List<String> categories = [
    'Programming',
    'Fantasia',
    'Romance',
    'Horror',
    'Science Fiction',
    'Mystery',
    'Thriller',
    'Historical',
    'Non-Fiction',
    'Biography',
    'Self-Help',
    'Health',
    'Travel',
    'Cooking',
    'Art',
    'Poetry',
    'Comics',
    'Children',
    'Young Adult',
    'Graphic Novels',
    'Fantasy',
    'Adventure',
    'Drama',
    'Action',
    'Classic',
    'Dystopian',
    'Literary Fiction',
    'Short Stories',
    'Religion',
    'Philosophy',
    'Psychology',
    'Business',
    'Finance',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 50),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  children: [
                    for (var category in categories)
                      ElevatedButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.homeRoute, extra: category);
                        },
                        child: Text(
                          category,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
