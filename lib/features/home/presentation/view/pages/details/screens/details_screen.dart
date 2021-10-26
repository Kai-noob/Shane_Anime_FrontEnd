import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../bloc/details/details_bloc.dart';
import '../../../../../../injector.dart';
import '../../../../../domain/entities/comic.dart';

import '../widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.comicModel}) : super(key: key);

  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DetailsBloc>()..add(FetchEpisode(comicModel.id)),
      child: Scaffold(body: DetailsBody(comicModel: comicModel)),
    );
  }
}
