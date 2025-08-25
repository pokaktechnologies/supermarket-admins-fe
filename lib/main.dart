import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:supermarketadmin/app.dart';
import 'package:supermarketadmin/core/utils/providers.dart';

void main() async {
  await dotenv.load(fileName: "assets/.env");
  runApp(MultiProvider(providers: providers, child: const MyApp()));
}
