import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grand_hotel_ui/features/auth/data/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  signup({required String email, required String password}) async {
    emit(SignedUpLoading());
    final response = await AuthRepo.signup(email: email, password: password);
    if (response is UserCredential) {
      emit(SignedUpSuccess());
    } else {
      emit(SignedUpError(response.toString()));
    }
  
  }
  signin({required String email, required String password}) async {
  emit(SignedInLoading());

  final response = await AuthRepo.signin(
    email: email,
    password: password,
  );

  if (response is UserCredential) {
    emit(SignedInSuccess());
  } else {
    emit(SignedInError(response.toString()));
  }
}
}
