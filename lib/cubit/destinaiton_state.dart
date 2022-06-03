part of 'destinaiton_cubit.dart';

abstract class DestinaitonState extends Equatable {
  const DestinaitonState();

  @override
  List<Object> get props => [];
}

class DestinaitonInitial extends DestinaitonState {}

// Loading
class DestinationLoading extends DestinaitonState {}

// Success
class DestinaitonSuccess extends DestinaitonState {
  final List<DestinationModel> destination;

  const DestinaitonSuccess(this.destination);

  @override
  List<Object> get props => [destination];
}

// Error
class DestinationFailed extends DestinaitonState {
  final String error;

  const DestinationFailed(this.error);

  @override
  List<Object> get props => [error];
}
