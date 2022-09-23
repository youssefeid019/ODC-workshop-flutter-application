part of 'faq_cubit.dart';

@immutable
abstract class FaqState {}

class FaqInitial extends FaqState {}

class LoadedFAQ extends FaqState {}

class Animate extends FaqState {}
