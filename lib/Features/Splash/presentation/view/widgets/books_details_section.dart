import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/custom_list_view_item.dart';
import 'booking_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}