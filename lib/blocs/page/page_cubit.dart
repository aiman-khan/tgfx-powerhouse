import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgfx/blocs/page/page_state.dart';

class PageBloc extends Cubit<PageBlocState> {
  final PageController pageController = PageController();

  PageBloc() : super(PageBlocState(0));

  void navigateToPage(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
    emit(PageBlocState(pageIndex));
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
