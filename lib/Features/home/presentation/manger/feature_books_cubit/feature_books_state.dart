import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class FeatureBookState extends Equatable {
  const FeatureBookState();
  @override
  List<Object> get props => [];
}

class FeatureBooksIntial extends FeatureBookState {}

class FeatureBooksLoading extends FeatureBookState {}

class FeatureBooksFailure extends FeatureBookState {
  final String errMessage;

  const FeatureBooksFailure(this.errMessage);
}

class FeatureBooksSuccess extends FeatureBookState {
  final List<BookModel> books;

  const FeatureBooksSuccess(this.books);
}
