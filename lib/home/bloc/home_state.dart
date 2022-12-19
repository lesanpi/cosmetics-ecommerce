part of 'home_bloc.dart';

/// {@template home_state}
/// HomeState description
/// {@endtemplate}
class HomeState {
  /// {@macro home_state}
  const HomeState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  /// Creates a copy of the current HomeState with property changes
  HomeState copyWith({
    String? customProperty,
  }) {
    return HomeState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template home_initial}
/// The initial state of HomeState
/// {@endtemplate}
class HomeInitial extends HomeState {
  /// {@macro home_initial}
  const HomeInitial() : super();
}
