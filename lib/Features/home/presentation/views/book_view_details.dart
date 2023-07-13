import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookViewDetails extends StatefulWidget {
  const BookViewDetails({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookViewDetails> createState() => _BookViewDetailsState();
}

class _BookViewDetailsState extends State<BookViewDetails> {
  @override
  void initState() {
    BlocProvider.of<SimilarbooksCubit>(context).fetchSimilarBooks(
      category: widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookModel: widget.bookModel),
      ),
    );
  }
}
