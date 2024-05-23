import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_mock/application/state/video_player_provider/video_player_provider.dart';
import 'package:tiktok_mock/domain/model/video.dart';
import 'package:tiktok_mock/ui/pages/video_player_page/video_player_buttons.dart';
import 'package:tiktok_mock/ui/theme/colors.dart';
import 'package:tiktok_mock/ui/widgets/loading.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends ConsumerWidget {
  const VideoPlayerPage({super.key, required this.video, required this.index});

  final Video video;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(videoPlayerNotifierProvider(video: video));
    return ProviderScope(
      overrides: [
        videoPlayerNotifierProvider(video: video)
            .overrideWith(() => VideoPlayerNotifier())
      ],
      child: Consumer(builder: (context, ref, _) {
        state.value?.seekTo(const Duration(seconds: 0));
        state.value?.play();
        return Scaffold(
          backgroundColor: BrandColor.grey,
          body: Stack(
            children: [
              state.when(
                data: (data) =>
                    data.value.isInitialized ? VideoPlayer(data) : Container(),
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
              Positioned(
                right: 0,
                bottom: 0,
                child: VideoPlayerButtons(
                  commentCount: video.comentCount,
                  saveCount: video.saveCount,
                  shareCount: video.shareCount,
                  heartCount: video.likeCount,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
