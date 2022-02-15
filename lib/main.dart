import 'package:demo_flutter/core/bloc_factory.dart';
import 'package:demo_flutter/core/service_provider.dart';
import 'package:flutter/cupertino.dart';
import 'internal/application.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceProvider.instance.initialize();
  await BlocFactory.instance.initialize();
  runApp(const FlutterDemoApplication());
}
