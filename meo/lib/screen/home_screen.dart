import 'package:flutter/material.dart';
import '../config/theme_config.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genres = ['All', 'Action', 'Honor', 'Ronmace', 'fantasy'];
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Find Your Best\nMovie ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    color: Colors.blue,
                    size: 90,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          children: const [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Icon(
                              Icons.search,
                              color: Colors.red,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Search movies',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: DarkTheme.darkerBackground,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.abc_outlined),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: genres.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(
                        genres[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
