import 'package:flutter/material.dart';
import 'package:flutter_todo/Views/Screens/App/AddProfile.dart';
import 'package:flutter_todo/Views/Screens/App/DetailScreen.dart';
import 'package:flutter_todo/Views/Screens/App/cartScreen.dart';
import 'package:flutter_todo/Views/Screens/App/homeScreen.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ViewPage> {
  int index = 0;
  List<Widget> interfaces = [
    const HomeScreen(),
    cartScreen(),
    const AddGame(),
    DetailScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(130.0),
                child: AppBar(
                  title: const Text("G-Store Esprit"),
                  backgroundColor: Colors.blue,
                  elevation: 0.0,
                  flexibleSpace: const Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: TabBar(indicatorColor: Colors.black, tabs: [
                      Tab(
                        text: "Home",
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                      Tab(
                        text: "Bibliothèque",
                        icon: Icon(
                          Icons.games,
                          color: Colors.white,
                        ),
                      ),
                      Tab(
                        text: "Panier",
                        icon: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                      ),
                      Tab(
                        text: "Profile",
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              drawer: Drawer(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountName: Text("Thouraya Zemzemi"),
                      accountEmail: Text("thouraya.zmz@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.pink.shade50,
                        child: Text(
                          "T",
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.contacts),
                      title: Text("Contact Us"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              body: const TabBarView(children: [
                HomeScreen(),
                AddGame(),
                cartScreen(),
                DetailScreen()
              ]),
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: index,
                  onTap: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  items: const [
                    //1
                    BottomNavigationBarItem(
                        icon: Icon(Icons.storefront_outlined), label: "Store"),
                    //2
                    BottomNavigationBarItem(
                        icon: Icon(Icons.bookmark_added_outlined),
                        label: "Library"),
                    //3
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_basket_outlined),
                        label: "Basket"),
                  ]),
            ),
          )),
    );
  }
}
