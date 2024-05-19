import 'package:agro_app/src/features/advertising-page/domain/entities/advertising_entity.dart';
import 'package:agro_app/src/features/advertising-page/presentation/notifier/advertising_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final advertisingNotifierProvider =
    StateNotifierProvider.autoDispose<AdvertisingNotifier, AdvertisingState>(
        (ref) {
  return AdvertisingNotifier(ref);
});

class AdvertisingNotifier extends StateNotifier<AdvertisingState> {
  final Ref _ref;
  late final BuildContext _context;

  AdvertisingNotifier(this._ref)
      : super(AdvertisingState(
          advertisingEntity: const AdvertisingEntity.empty(),
        ));

  void init(BuildContext context) {
    _context = context;
    _setAds();
  }

  void _setAds() {
    final advertisingList = List.generate(3, (index) {
      return AdvertisingEntity(
        id: const Uuid().v4(),
        title: '${index + 15}',
        description: '${index + 150}',
        price: '${index + 1500}',
      );
    });

    state = state.copyWith(advertising: advertisingList);
  }

  Future<void> selectAds(AdvertisingEntity entity) async {
    final advertisingList = state.advertising;
    final selectedAdIndex =
        advertisingList.indexWhere((element) => element.id == entity.id);
    final selectedAd = advertisingList[selectedAdIndex];
    state = state.copyWith(advertisingEntity: selectedAd);
  }
}
