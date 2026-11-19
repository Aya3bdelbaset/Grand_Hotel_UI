part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class SignedInSuccess extends AuthState {}
final class SignedInError extends AuthState {
   final String message;
  SignedInError(this.message);
}
final class SignedInLoading extends AuthState {}

final class SignedUpSuccess extends AuthState {}
final class SignedUpError extends AuthState {
  final String message;
  SignedUpError(this.message);
}
final class SignedUpLoading extends AuthState {}
