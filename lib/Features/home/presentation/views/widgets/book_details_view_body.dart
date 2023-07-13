import 'package:booklyapp/Features/Splash/presentation/view/widgets/booking_rating.dart';
import 'package:booklyapp/Features/Splash/presentation/view/widgets/feaured_list_view.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_bottom.dart';
import '../../../../Splash/presentation/view/widgets/books_action.dart';
import '../../../../Splash/presentation/view/widgets/books_details_section.dart';
import '../../../../Splash/presentation/view/widgets/custom_book_details_app_par.dart';
import '../../../../Splash/presentation/view/widgets/similar_books_list_view.dart';
import '../../../../Splash/presentation/view/widgets/similar_books_section.dart';
import 'custom_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(
                  book: bookModel,
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
