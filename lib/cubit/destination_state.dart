part of 'destination_cubit.dart';

@immutable
abstract class DestinationState {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;

  DestinationSuccess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinationFailed extends DestinationState {
  final String message;

  DestinationFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
