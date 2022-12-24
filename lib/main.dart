import 'package:flutter/material.dart';
import 'package:friendslist/box.dart';
import 'package:friendslist/friendlist_model.dart';
import 'package:friendslist/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Friend> _friendlist = Helper.getFriendList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
              itemCount: _friendlist.length,
              itemBuilder: (context, index){
                return Box(
                          imageAsset: _friendlist[index].image,
                          firstname:_friendlist[index].firstName,
                          lastname: _friendlist[index].familyName,
                          email: _friendlist[index].email,
                          phone: _friendlist[index].phoneNumber,
                );
              },
            )

      )

      );
  }
}

