// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:movie_app/application/user_actions/user_actions_bloc.dart';
import 'package:movie_app/domain/auth/user.dart';
import 'package:movie_app/helper/global/cutom_error_widget.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';
import 'package:startapp/startapp.dart';

class EditNameForm extends StatelessWidget {
  const EditNameForm({Key? key, required this.user}) : super(key: key);

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController =
        TextEditingController(text: user.username);
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.all(15.0.w),
          child: TextField(
            controller: _nameController,
            decoration: const InputDecoration(hintText: "Enter your new name"),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsets.all(10.0.w),
          child: SizedBox(
            width: double.infinity,
            height: 60.h,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              onPressed: () {
                _nameController.text.isNotEmpty
                    ? context
                        .read<UserActionsBloc>()
                        .add(UserActionsEvent.editName(_nameController.text))
                    : null;
              },
              child: Text(
                "Change",
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ChangeNameScreen extends StatefulWidget {
  const ChangeNameScreen({Key? key}) : super(key: key);

  @override
  _ChangeNameScreenState createState() => _ChangeNameScreenState();
}

class _ChangeNameScreenState extends State<ChangeNameScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserActionsBloc>()..add(const UserActionsEvent.fetchProfile()),
      child: BlocConsumer<UserActionsBloc, UserActionsState>(
        listener: (context, state) => state.maybeMap(
            orElse: () {},
            updateNameSuccess: (_) {
              Navigator.of(context).pop();
            }),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Change Name"),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              elevation: 0.0,
            ),
            body: state.maybeMap(
              loading: (value) => const Center(child: LoadingIndicator()),
              error: (error) => CustomError(
                  errorMessage: error.failure.maybeMap(
                      unableToFetch: (_) => "Unexcepted Error occured.",
                      notFound: (_) => "No Saved Mangas",
                      orElse: () => "Unknown Error"),
                  errorImage: "assets/logo/error.svg"),
              profileLoaded: (_) {
                return EditNameForm(user: _.profile);
              },
              orElse: () {},
            ),
            bottomNavigationBar: AdBanner(),
          );
        },
      ),
    );
  }
}
