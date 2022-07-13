import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Ngà Kezzy'),
            accountEmail: const Text('+84377422467'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/564x/83/aa/9b/83aa9b4cb852720272e54bc11b6e24ab.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://anhdepfree.com/wp-content/uploads/2020/11/anh-nen-4k-anime-1.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
            title: const Text('Favorite',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.group_add,
              color: Colors.blue,
            ),
            title: const Text('New Group',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.green,
            ),
            title: const Text('Friend',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.call,
              color: Colors.black,
            ),
            title: const Text('Call',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_rounded,
            ),
            title: const Text('Setting',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text('Exit',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
