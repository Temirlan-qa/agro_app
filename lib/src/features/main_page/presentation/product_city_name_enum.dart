enum LocationEnum {
  none('None'),
  astana('Astana'),
  almaty('Almaty');

  final String title;
  const LocationEnum(this.title);
}

extension ExtCityEnum on String {
  LocationEnum getCityNameEnum() {
    switch (this) {
      case 'Astana':
        return LocationEnum.astana;
      case 'Almaty':
        return LocationEnum.almaty;
      default:
        return LocationEnum.none;
    }
  }
}
