import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/user_actions/user_actions_bloc.dart';
import 'package:movie_app/helper/global/cutom_error_widget.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';

class ChangeImageScreen extends StatefulWidget {
  const ChangeImageScreen({Key? key}) : super(key: key);

  @override
  State<ChangeImageScreen> createState() => _ChangeImageScreenState();
}

class _ChangeImageScreenState extends State<ChangeImageScreen> {
  int? seletedIndex;

  String image = "";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserActionsBloc>()..add(const UserActionsEvent.fetchProfile()),
      child: BlocListener<UserActionsBloc, UserActionsState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              updateImageSuccess: (_) {
                Navigator.of(context).pop();
              });
        },
        child: BlocBuilder<UserActionsBloc, UserActionsState>(
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text("Change Avatar"),
                  leading: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  elevation: 0.0,
                ),
                body: state.maybeMap(
                    orElse: () {},
                    loading: (_) => const LoadingIndicator(),
                    error: (error) => CustomError(
                        errorMessage: error.failure.maybeMap(
                            unableToFetch: (_) => "Unexcepted Error occured.",
                            notFound: (_) => "No Saved Mangas",
                            orElse: () => "Unknown Error"),
                        errorImage: "assets/logo/error.svg"),
                    profileLoaded: (_) {
                      return Column(
                        children: [
                          Expanded(
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection("profile")
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return const CustomError(
                                        errorMessage:
                                            "Something went wrong.Try again Later",
                                        errorImage: "assets/logo/error.svg");
                                  }
                                  if (snapshot.hasData) {
                                    return GridView.builder(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 30,
                                              crossAxisSpacing: 20),
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              seletedIndex = index;
                                              image = snapshot
                                                  .data!.docs[seletedIndex!]
                                                  .get("image");
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(snapshot
                                                        .data!.docs[index]
                                                        .get("image"))),
                                                border: Border.all(
                                                    width: 3.0,
                                                    color: seletedIndex == index
                                                        ? Colors.red
                                                        : Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color(0xff1B2C3B)),
                                          ),
                                        );
                                      },
                                    );
                                  }
                                  return Container();
                                }),
                          ),
                          Visibility(
                            visible: seletedIndex != null,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 70,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Colors.red,
                                  height: 60,
                                  onPressed: () {
                                    context
                                        .read<UserActionsBloc>()
                                        .add(UserActionsEvent.editImage(image));
                                  },
                                  child: const Text(
                                    "Save",
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }));
          },
        ),
      ),
    );
  }
}
