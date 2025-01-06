part of 'sholat_bloc.dart';

abstract class SholatState extends Equatable {
  const SholatState();  

  @override
  List<Object> get props => [];
}
class SholatInitial extends SholatState {}
