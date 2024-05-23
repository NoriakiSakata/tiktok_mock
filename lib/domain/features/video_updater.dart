import 'package:tiktok_mock/domain/model/video.dart';

class VideoUpdater {
  Video incrementLike(Video video) {
    return video.copyWith(likeCount: video.likeCount + 1);
  }

  Video decrementLike(Video video) {
    return video.copyWith(likeCount: video.likeCount - 1);
  }
}
