import 'package:flutter/material.dart';
import '../api/fetch_api.dart';
import '../model/man_model.dart';

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
          child: FutureBuilder<List<Man>>(
              future: FetchHomeApi().fetchPost(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.builder(
                  itemBuilder: (contextListView, index) {
                    return Container(
                      padding: const EdgeInsets.only(left: 5),
                      margin: const EdgeInsets.only(bottom: 4),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            snapshot.data![index].userId.toString(),
                          ),
                          Text(
                            snapshot.data![index].id.toString(),
                          ),
                          Text(
                            snapshot.data![index].title,
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: snapshot.data!.length,
                );
              }),
        ),
      ),
    );
  }
}
