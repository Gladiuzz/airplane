import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) async {
    if (!isSelected(id)) {
      state.add(id);
      print(state.length);
    } else {
      state.remove(id);
      // state.length = state.length - state.length;
    }
    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
