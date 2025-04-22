import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featuedListView.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .20),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 15),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(height: 1),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 1),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 15),
                const BooksAction(),
                Expanded(child: const SizedBox(height: 40)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You Can Also Like',
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 10),
                SimilarBooksListView(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
