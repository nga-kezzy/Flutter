import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);

  final int selectedPageIndex;
  final Function onIconTap;

  @override
  Widget build(BuildContext context) {
    final barheight = MediaQuery.of(context).size.height * 0.06;

    return BottomAppBar(
      color: selectedPageIndex == 0 ? Colors.black : Colors.white,
      child: Container(
        height: barheight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomBarNavItem(1, 'Home', TextStyle(), 'home'),
            _bottomBarNavItem(2, 'Discover', TextStyle(), 'search'),
            _addVideoNavItem(barheight),
            _bottomBarNavItem(3, 'Inbox', TextStyle(), 'messenger'),
            _bottomBarNavItem(4, 'Profile', TextStyle(), 'account')
          ],
        ),
      ),
    );
  }

  _bottomBarNavItem(
      int index, String label, TextStyle textSttyle, String iconName) {
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Colors.black : Colors.grey;
    if (isSelected && selectedPageIndex == 0) {
      iconAndTextColor = Colors.white;
    }
    return GestureDetector(
      onTap: () => {(null)},
      child: Column(
        children: const [
          Icon(Icons.home, size: 25, color: Colors.grey),
          SizedBox(
            height: 3,
          ),
          Text('Home', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  _addVideoNavItem(double height) {
    return Container(
      height: height - 15,
      width: 48,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.redAccent],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Container(
            width: 41,
            height: height - 15,
            decoration: BoxDecoration(color: Colors.white),
            child: Icon(
              Icons.add,
            )),
      ),
    );
  }
}
