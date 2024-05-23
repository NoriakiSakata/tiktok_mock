// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_player_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$PageIndexHash() => r'2984c2d97c2bc2b9dd73fa777cbbdb7e4ee22b70';

/// See also [PageIndex].
final pageIndexProvider = AutoDisposeNotifierProvider<PageIndex, int>(
  PageIndex.new,
  name: r'pageIndexProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$PageIndexHash,
);
typedef PageIndexRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$PageIndex extends AutoDisposeNotifier<int> {
  @override
  int build();
}

String _$VideoPlayerNotifierHash() =>
    r'1ff343f9a0ffcadcc42b4f2b99b8a439d3372c43';

/// See also [VideoPlayerNotifier].
class VideoPlayerNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    VideoPlayerNotifier, VideoPlayerController> {
  VideoPlayerNotifierProvider({
    required this.video,
  }) : super(
          () => VideoPlayerNotifier()..video = video,
          from: videoPlayerNotifierProvider,
          name: r'videoPlayerNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$VideoPlayerNotifierHash,
        );

  final Video video;

  @override
  bool operator ==(Object other) {
    return other is VideoPlayerNotifierProvider && other.video == video;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, video.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<VideoPlayerController> runNotifierBuild(
    covariant _$VideoPlayerNotifier notifier,
  ) {
    return notifier.build(
      video: video,
    );
  }
}

typedef VideoPlayerNotifierRef
    = AutoDisposeAsyncNotifierProviderRef<VideoPlayerController>;

/// See also [VideoPlayerNotifier].
final videoPlayerNotifierProvider = VideoPlayerNotifierFamily();

class VideoPlayerNotifierFamily
    extends Family<AsyncValue<VideoPlayerController>> {
  VideoPlayerNotifierFamily();

  VideoPlayerNotifierProvider call({
    required Video video,
  }) {
    return VideoPlayerNotifierProvider(
      video: video,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<VideoPlayerNotifier,
      VideoPlayerController> getProviderOverride(
    covariant VideoPlayerNotifierProvider provider,
  ) {
    return call(
      video: provider.video,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'videoPlayerNotifierProvider';
}

abstract class _$VideoPlayerNotifier
    extends BuildlessAutoDisposeAsyncNotifier<VideoPlayerController> {
  late final Video video;

  FutureOr<VideoPlayerController> build({
    required Video video,
  });
}
