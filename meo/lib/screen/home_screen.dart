import 'package:flutter/material.dart';
import 'package:meo/model/fake.dart';
import '../API/home_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    FetchHomeApi().fetchPost();
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Column(
        children: [],
      ),
    )));
  }
}
