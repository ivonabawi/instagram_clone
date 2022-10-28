import 'package:flutter/material.dart';
import 'package:instagram_clone/instagram__icons_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 4),
            child: Center(
              child: Text(
                'ivonabawi',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 7, bottom: 7, left: 12, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/border.png'),
                  radius: 49,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 46,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.jpeg'),
                      radius: 43,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '1,702',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '90M',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '2,022',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Followed',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ivo Nabawi Setyawan',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'I like computer but not in coding',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '- Mark Santoso',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'www.sukahengker.com',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: TabBar(
                indicatorWeight: 2,
                indicatorColor: Colors.black,
                controller: _tabController,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Instagram_Icons.grid,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Instagram_Icons.tag,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: <Widget>[
              GridView.count(
                primary: false,
                padding: const EdgeInsets.only(top: 4, bottom: 4),
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/images/1.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/2.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/4.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/5.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/6.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/7.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/8.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/9.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/10.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/11.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/images/12.jpg'),
                  ),
                ],
              ),
              Center(
                child: Text('Tab Relate'),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Instagram_Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Instagram_Icons.search,
              size: 30,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Instagram_Icons.add,
              size: 30,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Instagram_Icons.like,
              size: 30,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Instagram_Icons.person,
              size: 30,
            ),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    ));
  }
}
