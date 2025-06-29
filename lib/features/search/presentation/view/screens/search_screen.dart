import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:book_store/features/search/presentation/view_model/search_books_cubit/cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<BookModel> books = [];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchTextFormField(controller: controller),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              onPressed: () {
                BlocProvider.of<SearchBooksCubit>(
                  context,
                ).fetchSearchBooks(category: controller.text);
                controller.clear();
              },
              child: Text(
                'Search',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            BlocConsumer<SearchBooksCubit, SearchBooksState>(
              listener: (context, state) {
                if (state is SearchBooksLoaded) {
                  books = state.books;
                }
                if (state is SearchBooksError) {}
                if (state is SearchBooksLoading) {}
              },
              builder: (context, state) {
                if (state is SearchBooksLoaded) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: books.length,
                      itemBuilder:
                          (context, index) =>
                              BestSellerItem(bookModel: books[index]),
                    ),
                  );
                }
                if (state is SearchBooksLoading) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return Center(child: Text('No Books Found'));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
