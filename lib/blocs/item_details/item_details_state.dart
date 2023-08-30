import '../../models/item_model.dart';

abstract class ItemDetailsState {}

class ItemDetailsNotInitializedState extends ItemDetailsState {}

class ItemDetailsLoadingState extends ItemDetailsState {}

class ItemDetailsLoadedState extends ItemDetailsState {
  final Item item;

  ItemDetailsLoadedState(this.item);
}

class ItemDetailsErrorState extends ItemDetailsState {
  final String error;

  ItemDetailsErrorState(this.error);
}
