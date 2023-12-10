import 'package:flutter/material.dart';
import 'package:unidue/screens/dashboard/dashboard.dart';
import 'package:unidue/screens/explore/explore_screen.dart';
import 'package:unidue/screens/notifications/notifications_screen.dart';
import 'package:unidue/screens/user/user_screen.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedPageIndex = 0;


  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    Widget activePage = const Dashboard();

    if(_selectedPageIndex == 0){
      activePage = const Dashboard();
    } else if(_selectedPageIndex == 1){
      activePage = const ExploreScreen();
    } else if(_selectedPageIndex == 2){
      activePage = const NotificationsScreen();
    } else if(_selectedPageIndex == 3){
      activePage = const UserScreen();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Início",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: "Explorar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Notificações",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Meu Perfil",
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
