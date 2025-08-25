import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:supermarketadmin/providers/category_providers.dart';
import 'package:supermarketadmin/providers/login_provider.dart';
import 'package:supermarketadmin/providers/menu_providers.dart';


List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CategoryProviders()),
  ChangeNotifierProvider(create: (_) => MenuProvider()),
  ChangeNotifierProvider(create: (_) => LoginProvider()),
];
