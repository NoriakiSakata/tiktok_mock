import 'package:flutter/material.dart';
import 'package:tiktok_mock/application/state/video_player_provider/video_player_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_mock/application/state/video_scrollable_provider/video_scrollable_provider.dart';
import 'package:tiktok_mock/ui/pages/video_player_page/video_player_page.dart';
import 'package:tiktok_mock/ui/widgets/loading.dart';

class VideoScrollablePage extends ConsumerWidget {
  const VideoScrollablePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(videoScrollableNotifierProvider);
    final controller = PageController(viewportFraction: 1, keepPage: false);
    return Scaffold(
      body: state.when(
        data: (data) {
          return PageView.builder(
            controller: controller,
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            onPageChanged: (value) {
              ref.read(pageIndexProvider.notifier).changeIndex(value);
            },
            itemBuilder: ((context, index) {
              return VideoPlayerPage(
                video: data[index],
                index: index,
              );
            }),
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(stackTrace.toString()),
          );
        },
        loading: () {
          return const Center(
            child: Loading(),
          );
        },
      ),
    );
  }
}
