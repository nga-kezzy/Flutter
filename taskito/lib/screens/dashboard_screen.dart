import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:taskito/widgets/list_dashboard_widget.dart';
import '../models/pie_chart_model.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCEECF5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 15, bottom: 30, right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / (5 / 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Dashboard',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/love.jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 180,
                    child: PageView(
                      children: [
                        PieChart(
                          PieChartData(
                            centerSpaceRadius: 30,
                            startDegreeOffset: 290,
                            sections: getSection(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListDashboard(
                'assets/icons/folder.png', 'Total task', '55', Colors.grey),
            ListDashboard(
                'assets/icons/checkbox.png', 'Completed', '13', Colors.pink),
            ListDashboard(
                'assets/icons/calendar.png', 'Working on', '25', Colors.green),
            ListDashboard(
                'assets/icons/plus.png', 'Pending', '17', Colors.black),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.folder),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.add),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.face),
              title: Text(''),
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.chat),
              title: Text(''),
            ),
          ]),
    );
  }
}

List<PieChartSectionData> getSection() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(
          color: data.color,
          value: data.percent,
          title: '${data.percent}',
          titleStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ));
      return MapEntry(index, value);
    })
    .values
    .toList();
