import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'application.dart';
import 'infrastructure/injectable.init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(Provider<GetIt>(
    create: (context) => GetIt.I,
    child: const Application(),
  ));
}
