import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiktok_mock/domain/model/tag.dart';
part 'video.freezed.dart';

@freezed
class Video with _$Video {
  const factory Video({
    /// ID
    required String id,

    /// url
    required String url,

    /// description
    required String description,

    /// tags
    required List<Tag> tags,

    /// coment count
    required int comentCount,

    /// like count
    required int likeCount,

    /// save count
    required int saveCount,

    /// share count
    required int shareCount,

    /// user name
    required String userName,

    /// user icon url
    required String userIconUrl,

    /// music icon url
    required String musicIconUrl,
  }) = _Video;
}
