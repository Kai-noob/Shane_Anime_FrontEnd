import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';
import 'package:movie_app/features/home/binding/home_binding.dart';
import 'package:movie_app/features/home/presentation/view/pages/controll_screen.dart';
import 'package:movie_app/features/userAccount/domain/usecases/add_user_usecase.dart';
import 'package:movie_app/features/userAccount/domain/usecases/sign_up_usecase.dart';

class AuthController extends GetxController {
  final SignUpUseCase signUpUseCase;

  final AddUserUseCase addUserUseCase;

  AuthController({required this.signUpUseCase, required this.addUserUseCase});

  RxBool _isBusy = false.obs;

  bool get isBusy => _isBusy.value;

  setBusy(bool? isBusy) {
    _isBusy.value = isBusy!;
  }

  Future<void> signUp(String userName, String email, String password) async {
    try {
      setBusy(true);
      UserCredential user = await signUpUseCase.call(email, password);
      if (user.user!.uid.isNotEmpty) {
        await addUserUseCase.call(userName, email, user.user!);

        SnackBarUtils().showSnackBar("Sign Up Success");
        Future.delayed(
          Duration(seconds: 3),
        );
        Get.offAll(() => ControlView(), binding: HomeBinding());
      }
    } catch (e) {
      setBusy(false);
    }
  }
}
