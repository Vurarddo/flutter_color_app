import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.init.config.dart';

final _getIt = GetIt.I;

@InjectableInit()
Future<void> configureDependencies() async => _getIt.init();
