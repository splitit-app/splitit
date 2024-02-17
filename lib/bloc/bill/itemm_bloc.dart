import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itemm_event.dart';
part 'itemm_state.dart';
part 'itemm_bloc.freezed.dart';

class ItemmBloc extends Bloc<ItemmEvent, ItemmState> {
  ItemmBloc() : super(const _Initial()) {
    on<ItemmEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
