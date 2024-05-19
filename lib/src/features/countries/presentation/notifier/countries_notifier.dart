import 'package:agro_app/src/features/countries/presentation/notifier/countries_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../domain/request_models/country_code_request_model.dart';
import '../../domain/usecase/get_all_countries_use_case.dart';
import '../../domain/usecase/get_cities_by_country_use_case.dart';

final countryNotifierProvider =
    StateNotifierProvider<CountriesNotifier, CountriesState>((ref) {
  final getAllCountriesUseCase = getIt<GetAllCountriesUseCase>();
  final getCitiesByCountryUseCase = getIt<GetCitiesByCountryUseCase>();

  return CountriesNotifier(
    ref,
    getAllCountriesUseCase,
    getCitiesByCountryUseCase,
  );
});

class CountriesNotifier extends StateNotifier<CountriesState> {
  final Ref _ref;
  final GetAllCountriesUseCase _getAllCountriesUseCase;
  final GetCitiesByCountryUseCase _getCitiesByCountryUseCase;

  CountriesNotifier(
    this._ref,
    this._getAllCountriesUseCase,
    this._getCitiesByCountryUseCase,
  ) : super(CountriesState());

  void init() {
    getAllCountries();
  }

  Future<void> getAllCountries() async {
    final result = await _getAllCountriesUseCase.call();
    if (result.isSuccessful || result.data != null) {
      state = state.copyWith(countriesList: result.data);
    }
  }

  Future<void> getCitiesByCountry({
    required String code,
  }) async {
    final requestModel = CountryCodeRequestModel(code: code);
    final result = await _getCitiesByCountryUseCase.call(requestModel);
    if (result.isSuccessful) {
      state = state.copyWith(citiesList: result.data);
    }
  }
}
