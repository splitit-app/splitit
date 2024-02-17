import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_state.dart';
part 'item_cubit.freezed.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit() : super(const ItemState.initial());
}
