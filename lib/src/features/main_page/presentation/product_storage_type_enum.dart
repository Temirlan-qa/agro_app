enum StorageTypeEnum {
  none('None'),
  coldStorage('Cold storage'),
  fermentation('Fermentation'),
  freezing('Freezing');

  final String title;
  const StorageTypeEnum(this.title);
}

extension ExtStorageTypeEnum on String {
  StorageTypeEnum getStorageTypeEnum() {
    switch (this) {
      case 'Cold storage':
        return StorageTypeEnum.coldStorage;
      case 'Fermentation':
        return StorageTypeEnum.fermentation;
      case 'Freezing':
        return StorageTypeEnum.freezing;
      default:
        return StorageTypeEnum.none;
    }
  }
}
