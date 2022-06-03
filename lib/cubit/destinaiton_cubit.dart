import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ticketapp/models/destinaiton_model.dart';
import 'package:ticketapp/services/destinaiton_services.dart';

part 'destinaiton_state.dart';

class DestinaitonCubit extends Cubit<DestinaitonState> {
  DestinaitonCubit() : super(DestinaitonInitial());

  void fetchDestination() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destination =
          await DestinationServices().fetchDestination();

      emit(DestinaitonSuccess(destination));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
