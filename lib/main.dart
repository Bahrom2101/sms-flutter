import 'package:flutter/material.dart';
import 'package:sms/dao/poem_dao.dart';
import 'package:sms/database/database.dart';
import 'package:sms/ui/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = await $FloorAppDatabase.databaseBuilder('sms_db.db').build();
  final dao = database.poemDao;
  runApp(MyApp(dao:dao));
}

class MyApp extends StatefulWidget {

  final PoemDao? dao;

  const MyApp({Key? key,required this.dao}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(dao:widget.dao),
    );
  }
}