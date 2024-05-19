import '../../../generated/l10n.dart';
import '../countries/domain/entities/countries_entity.dart';

enum CountryType {
  uz('uz'),
  ru('ru'),
  kz('kz');

  final String title;
  const CountryType(this.title);
}

List<String> getCountryLocalization(List<CountriesEntity> countriesList) {
  List<String> result = [];
  for (int i = 0; i < countriesList.length; i++) {
    if (countriesList[i].code == CountryType.kz.title) {
      result.add(S.current.kazakhstan);
    } else if (countriesList[i].code == CountryType.uz.title) {
      result.add(S.current.uzbekistan);
    } else {
      result.add(S.current.russia);
    }
  }
  return result;
}

extension ExtCountryType on String {
  String getCountryCode() {
    if (this == S.current.kazakhstan) {
      return CountryType.kz.title;
    } else if (this == S.current.uzbekistan) {
      return CountryType.uz.title;
    } else if (this == S.current.russia) {
      return CountryType.ru.title;
    } else {
      return CountryType.kz.title;
    }
  }
}
