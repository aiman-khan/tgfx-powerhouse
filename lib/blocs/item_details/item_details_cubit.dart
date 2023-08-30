import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailsCubit extends Cubit<bool> {
  ItemDetailsCubit() : super(false);

  void showItemDetails() {
    emit(!state);
  }
}
