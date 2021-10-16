import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source_impl.dart';
import 'package:movie_app/features/userAccount/data/repositories/auth_repo_impl.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';
import 'package:movie_app/features/userAccount/domain/usecases/add_user_usecase.dart';
import 'package:movie_app/features/userAccount/domain/usecases/sign_up_usecase.dart';
import 'package:movie_app/features/userAccount/presentation/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController(
        addUserUseCase: Get.find<AddUserUseCase>(),
        signUpUseCase: Get.find<SignUpUseCase>()));

    Get.lazyPut<SignUpUseCase>(
        () => SignUpUseCase(authRepo: Get.find<AuthRepo>()));

    Get.lazyPut<AddUserUseCase>(
        () => AddUserUseCase(authRepo: Get.find<AuthRepo>()));

    Get.lazyPut<AuthRepo>(
        () => AuthRepoImpl(authDataSource: Get.find<AuthDataSource>()));

    Get.lazyPut<AuthDataSource>(() => AuthDataSourceImpl(
          firebaseAuth: Get.find<FirebaseAuth>(),
        ));

    final auth = FirebaseAuth.instance;

    Get.put(auth, permanent: true);
  }
}
