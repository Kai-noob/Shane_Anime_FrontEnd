import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/global/error_message.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../domain/entities/episodes.dart';
import '../../../../bloc/daily_update/daily_update_bloc.dart';
import '../../reading/reading_screen.dart';

import 'shimmer_card.dart';

class DailyUpdateList extends StatelessWidget {
  const DailyUpdateList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyUpdateBloc, DailyUpdateState>(
      builder: (context, state) {
        if (state is DailyUpdateLoading) {
          return const ShimmerCard();
        }
        if (state is DailyUpdateError) {
          return ErrorMessage(
            message: state.message,
            isSliver: true,
          );
        }
        if (state is DailyUpdateSuccess) {
          return SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: state.recentEpisodes
                    .map((e) => DailyUpdateCard(episodes: e))
                    .toList(),
              ),
            ),
          );
        }
        return SliverToBoxAdapter(child: Container());
      },
    );
  }
}

class DailyUpdateCard extends StatelessWidget {
  final Episode episodes;

  const DailyUpdateCard({
    Key? key,
    required this.episodes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ReadingScreen(episodes: episodes)));
            },
            child: SizedBox(
              height: 240,
              width: 140,
              child: ImageWidget(image: episodes.coverPhoto),
            ),
          ),
          Text(
            episodes.title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
          Text("${episodes.episodeName}${episodes.episodeNumber.toString()}"),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
