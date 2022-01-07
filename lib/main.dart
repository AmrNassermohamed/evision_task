
import 'package:evision_task/provider/repo_provider.dart';
import 'package:evision_task/screen/repo_screen/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [

      ChangeNotifierProvider(create: (_) =>RepoProvider(),),

    ],
    child: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:RepScreen(),


    );
  }
}

