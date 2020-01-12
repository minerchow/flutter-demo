import 'package:flutter/material.dart';
import 'package:separating_build_environments/app_config.dart';
import 'package:separating_build_environments/my_home_page.dart';
import 'package:fluro/fluro.dart';
import './routes/routes.dart';
import './routes/application.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    final router = Router();
    Routes.configureRoutes(router);
    Application.router=router;
    return new MaterialApp(
      title: config.appName,
      //路由静态化
      onGenerateRoute: Application.router.generator,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}