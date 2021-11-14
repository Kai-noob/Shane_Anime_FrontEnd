import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/auth/auth_failures.dart';
import 'package:movie_app/domain/auth/i_auth_facade.dart';
import 'package:movie_app/domain/auth/value_objects.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

@injectable
class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final IAuthFacade _authFacade;

  SigninBloc(this._authFacade) : super(SigninState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<RegisterWithEmailAndPassword>(_onRegisterWithCredentials);
    on<SignInWithEmailAndPassword>(_onSignInWithCredentials);
    on<SignInWithGoogle>(_onSignInWithGoogle);
  }

  void _onEmailChanged(EmailChanged event, Emitter<SigninState> emit) {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SigninState> emit) {
    emit(state.copyWith(
      password: Password(event.passwordStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  void _onRegisterWithCredentials(
      RegisterWithEmailAndPassword event, Emitter<SigninState> emit) async {
    _performActionOnAuthFacadeWithCredentials(
        emit, _authFacade.registerWithEmailAndPassword);
  }

  void _onSignInWithCredentials(
      SignInWithEmailAndPassword event, Emitter<SigninState> emit) {
    _performActionOnAuthFacadeWithCredentials(
        emit, _authFacade.signInWithEmailAndPassword);
  }

  void _performActionOnAuthFacadeWithCredentials(
    Emitter<SigninState> emit,
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      final failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ));
    } else {
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        showErrorMessages: AutovalidateMode.always,
      ));
    }
  }

  void _onSignInWithGoogle(
      SignInWithGoogle event, Emitter<SigninState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }
}
