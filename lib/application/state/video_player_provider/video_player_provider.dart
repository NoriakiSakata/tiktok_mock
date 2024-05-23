import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tiktok_mock/domain/model/video.dart';
import 'package:video_player/video_player.dart';

part 'video_player_provider.g.dart';

@riverpod
class PageIndex extends _$PageIndex {
  @override
  int build() => 0;

  void changeIndex(int index) => state = index;
}

@riverpod
class VideoPlayerNotifier extends _$VideoPlayerNotifier {
  @override
  FutureOr<VideoPlayerController> build({required Video video}) async {
    final controller = VideoPlayerController.networkUrl(Uri.parse(video.url));

    await controller.initialize();

    ref.onDispose(() {
      controller.dispose();
    });

    return controller;
  }
}
