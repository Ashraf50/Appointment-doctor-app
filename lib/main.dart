import 'package:doc_doc/core/routes/app_routes.dart';
import 'package:doc_doc/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  AppRouter appRouter = AppRouter();
  runApp(MyApp(
    appRouter: appRouter,
  ));
}
