import 'package:freezed_annotation/freezed_annotation.dart';
part 'tag.freezed.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    /// ID
    required String id,

    /// ステータス
    required String text,
  }) = _Tag;
}
