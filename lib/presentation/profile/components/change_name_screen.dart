// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/user_actions/user_actions_bloc.dart';
import 'package:movie_app/domain/auth/user.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';

class ChangeNameScreen extends StatelessWidget {
  const ChangeNameScreen({Key? key}) : super(key: key);

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
              profileLoaded: (_) {
                return EditNameForm(user: _.profile);
              },
              orElse: () {},
            ),
          );
        },
      ),
    );
  }
}

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
