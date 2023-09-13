// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_color_app/features/color/domain/usecase/get_random_color.usecase.dart'
    as _i4;
import 'package:flutter_color_app/features/color/presentation/cubit_color/cubit/color_cubit.dart'
    as _i5;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'package:flutter_color_app/routing/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.factory<_i4.GetRandomColorUsecase>(() => _i4.GetRandomColorUsecase());
    gh.factory<_i5.ColorCubit>(
        () => _i5.ColorCubit(gh<_i4.GetRandomColorUsecase>()));
    return this;
  }
}
