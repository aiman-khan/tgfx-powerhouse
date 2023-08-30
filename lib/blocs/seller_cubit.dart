import 'package:flutter_bloc/flutter_bloc.dart';

class SellerCubit extends Cubit<bool> {
  SellerCubit() : super(false); // Initially, the user is not a seller

  void checkUserRole() {
    emit(false);
  }
}
