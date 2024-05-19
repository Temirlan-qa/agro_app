// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

import 'package:agro_app/src/core/api/client/rest/dio_client.dart' as _i3;
import 'package:agro_app/src/features/countries/data/data_sources/remote/countries_remote_impl.dart'
    as _i6;
import 'package:agro_app/src/features/countries/data/data_sources/remote/i_countries_remote.dart'
    as _i5;
import 'package:agro_app/src/features/countries/data/repository/countries_repository_impl.dart'
    as _i8;
import 'package:agro_app/src/features/countries/domain/repository/i_countries_repository.dart'
    as _i7;
import 'package:agro_app/src/features/countries/domain/usecase/get_all_countries_use_case.dart'
    as _i37;
import 'package:agro_app/src/features/countries/domain/usecase/get_cities_by_country_use_case.dart'
    as _i41;
import 'package:agro_app/src/features/products/data/client/products_rest_client.dart'
    as _i4;
import 'package:agro_app/src/features/products/data/data_sources/remote/i_product_remote.dart'
    as _i9;
import 'package:agro_app/src/features/products/data/data_sources/remote/product_remote_impl.dart'
    as _i10;
import 'package:agro_app/src/features/products/data/repository/product_repository_impl.dart'
    as _i12;
import 'package:agro_app/src/features/products/domain/repository/i_product_repository.dart'
    as _i11;
import 'package:agro_app/src/features/products/domain/usecases/add_product_to_favorite_use_case.dart'
    as _i33;
import 'package:agro_app/src/features/products/domain/usecases/create_product_use_case.dart'
    as _i35;
import 'package:agro_app/src/features/products/domain/usecases/delete_product_use_case.dart'
    as _i36;
import 'package:agro_app/src/features/products/domain/usecases/get_all_favorite_products_use_case.dart'
    as _i38;
import 'package:agro_app/src/features/products/domain/usecases/get_all_products_use_case.dart'
    as _i39;
import 'package:agro_app/src/features/products/domain/usecases/get_all_user_products_use_case.dart'
    as _i40;
import 'package:agro_app/src/features/products/domain/usecases/get_faqs_use_case.dart'
    as _i42;
import 'package:agro_app/src/features/products/domain/usecases/get_product_sub_category_use_case.dart'
    as _i43;
import 'package:agro_app/src/features/products/domain/usecases/get_product_use_case.dart'
    as _i44;
import 'package:agro_app/src/features/products/domain/usecases/remove_favorite_product_use_case.dart'
    as _i27;
import 'package:agro_app/src/features/products/domain/usecases/search_products_use_case.dart'
    as _i28;
import 'package:agro_app/src/features/products/domain/usecases/update_product_use_case.dart'
    as _i31;
import 'package:agro_app/src/features/profile/data/data_sources/remote/i_profile_remote.dart'
    as _i13;
import 'package:agro_app/src/features/profile/data/data_sources/remote/profile_remote_impl.dart'
    as _i14;
import 'package:agro_app/src/features/profile/data/repository/profile_repository_impl.dart'
    as _i16;
import 'package:agro_app/src/features/profile/domain/repository/i_profile_repository.dart'
    as _i15;
import 'package:agro_app/src/features/profile/domain/usecase/get_user_info_use_case.dart'
    as _i45;
import 'package:agro_app/src/features/profile/domain/usecase/log_out_use_case.dart'
    as _i25;
import 'package:agro_app/src/features/profile/domain/usecase/update_password_use_case.dart'
    as _i30;
import 'package:agro_app/src/features/profile/domain/usecase/update_user_info_use_case.dart'
    as _i32;
import 'package:agro_app/src/features/sign_in/data/data_sources/remote/i_sign_up_remote.dart'
    as _i17;
import 'package:agro_app/src/features/sign_in/data/data_sources/remote/sign_up_remote_impl.dart'
    as _i18;
import 'package:agro_app/src/features/sign_in/data/repository/sign_up_repository_impl.dart'
    as _i20;
import 'package:agro_app/src/features/sign_in/domain/repository/i_sign_up_repository.dart'
    as _i19;
import 'package:agro_app/src/features/sign_in/domain/usecase/organization_sign_up_use_case.dart'
    as _i26;
import 'package:agro_app/src/features/sign_up/data/data_sources/remote/i_sign_up_remote.dart'
    as _i21;
import 'package:agro_app/src/features/sign_up/data/data_sources/remote/sign_up_remote_impl.dart'
    as _i22;
import 'package:agro_app/src/features/sign_up/data/repository/sign_up_repository_impl.dart'
    as _i24;
import 'package:agro_app/src/features/sign_up/domain/repository/i_sign_up_repository.dart'
    as _i23;
import 'package:agro_app/src/features/sign_up/domain/usecase/country_code_use_case.dart'
    as _i34;
import 'package:agro_app/src/features/sign_up/domain/usecase/sign_up_use_case.dart'
    as _i29;
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i3.DioRestClient>(
      () {
        final i = _i3.DioRestClient();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i3.DioRestClient>(
      () => _i4.ProductRestClient(),
      instanceName: 'ProductRestClient',
    );
    gh.lazySingleton<_i5.ICountriesRemote>(
      () => _i6.CountriesRemoteImpl(gh<_i3.DioRestClient>()),
      instanceName: 'CountriesRemoteImpl',
    );
    gh.lazySingleton<_i7.ICountriesRepository>(
      () => _i8.CountriesRepositoryImpl(
          gh<_i5.ICountriesRemote>(instanceName: 'CountriesRemoteImpl')),
      instanceName: 'CountriesRepositoryImpl',
    );
    gh.lazySingleton<_i9.IProductRemote>(
      () => _i10.ProductRemoteImpl(gh<_i3.DioRestClient>()),
      instanceName: 'ProductRemoteImpl',
    );
    gh.lazySingleton<_i11.IProductRepository>(
      () => _i12.ProductRepositoryImpl(
          gh<_i9.IProductRemote>(instanceName: 'ProductRemoteImpl')),
      instanceName: 'ProductRepositoryImpl',
    );
    gh.lazySingleton<_i13.IProfileRemote>(
      () => _i14.ProfileRemoteImpl(gh<_i3.DioRestClient>()),
      instanceName: 'ProfileRemoteImpl',
    );
    gh.lazySingleton<_i15.IProfileRepository>(
      () => _i16.ProfileRepositoryImpl(
          gh<_i13.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i17.ISignInRemote>(
      () => _i18.SignInRemoteImpl(gh<_i3.DioRestClient>()),
      instanceName: 'SignInRemoteImpl',
    );
    gh.lazySingleton<_i19.ISignInRepository>(
      () => _i20.SignInRepositoryImpl(
          gh<_i17.ISignInRemote>(instanceName: 'SignInRemoteImpl')),
      instanceName: 'SignInRepositoryImpl',
    );
    gh.lazySingleton<_i21.ISignUpRemote>(
      () => _i22.SignUpRemoteImpl(gh<_i3.DioRestClient>()),
      instanceName: 'SignUpRemoteImpl',
    );
    gh.lazySingleton<_i23.ISignUpRepository>(
      () => _i24.SignUpRepositoryImpl(
          gh<_i21.ISignUpRemote>(instanceName: 'SignUpRemoteImpl')),
      instanceName: 'SignUpRepositoryImpl',
    );
    gh.lazySingleton<_i25.LogOutUseCase>(() => _i25.LogOutUseCase(
        gh<_i15.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i26.OrganizationSignInUseCase>(() =>
        _i26.OrganizationSignInUseCase(
            gh<_i19.ISignInRepository>(instanceName: 'SignInRepositoryImpl')));
    gh.lazySingleton<_i27.RemoveFavoriteProductUseCase>(() =>
        _i27.RemoveFavoriteProductUseCase(gh<_i11.IProductRepository>(
            instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i28.SearchProductsUseCase>(() =>
        _i28.SearchProductsUseCase(gh<_i11.IProductRepository>(
            instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i29.SignUpUseCase>(() => _i29.SignUpUseCase(
        gh<_i23.ISignUpRepository>(instanceName: 'SignUpRepositoryImpl')));
    gh.lazySingleton<_i30.UpdatePasswordUseCase>(() =>
        _i30.UpdatePasswordUseCase(gh<_i15.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i31.UpdateProductUseCase>(() => _i31.UpdateProductUseCase(
        gh<_i11.IProductRepository>(instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i32.UpdateUserInfoUseCase>(() =>
        _i32.UpdateUserInfoUseCase(gh<_i15.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i33.AddProductToFavoriteUseCase>(() =>
        _i33.AddProductToFavoriteUseCase(gh<_i11.IProductRepository>(
            instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i34.CountryCodeUseCase>(() => _i34.CountryCodeUseCase(
        gh<_i23.ISignUpRepository>(instanceName: 'SignUpRepositoryImpl')));
    gh.lazySingleton<_i35.CreateProductUseCase>(() => _i35.CreateProductUseCase(
        gh<_i11.IProductRepository>(instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i36.DeleteProductUseCase>(() => _i36.DeleteProductUseCase(
        gh<_i11.IProductRepository>(instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i37.GetAllCountriesUseCase>(() =>
        _i37.GetAllCountriesUseCase(gh<_i7.ICountriesRepository>(
            instanceName: 'CountriesRepositoryImpl')));
    gh.lazySingleton<_i38.GetAllFavoriteProductsUseCase>(() =>
        _i38.GetAllFavoriteProductsUseCase(gh<_i11.IProductRepository>(
            instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i39.GetAllProductsUseCase>(() =>
        _i39.GetAllProductsUseCase(gh<_i11.IProductRepository>(
            instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i40.GetAllUserProductsUseCase>(() =>
        _i40.GetAllUserProductsUseCase(gh<_i11.IProductRepository>(
            instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i41.GetCitiesByCountryUseCase>(() =>
        _i41.GetCitiesByCountryUseCase(gh<_i7.ICountriesRepository>(
            instanceName: 'CountriesRepositoryImpl')));
    gh.lazySingleton<_i42.GetFaqsUseCase>(() => _i42.GetFaqsUseCase(
        gh<_i11.IProductRepository>(instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i43.GetProductSubCategoryUseCase>(() =>
        _i43.GetProductSubCategoryUseCase(gh<_i11.IProductRepository>(
            instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i44.GetProductUseCase>(() => _i44.GetProductUseCase(
        gh<_i11.IProductRepository>(instanceName: 'ProductRepositoryImpl')));
    gh.lazySingleton<_i45.GetUserInfoUseCase>(() => _i45.GetUserInfoUseCase(
        gh<_i15.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    return this;
  }
}
