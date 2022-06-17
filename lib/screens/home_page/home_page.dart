import 'package:flutter/material.dart';
import 'package:flutter_tv_maze/screens/search_screen/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TabBar(
        controller: _tabController,
        unselectedLabelColor: Theme.of(context).colorScheme.secondary,
        labelColor: Theme.of(context).colorScheme.primary,
        indicatorColor: Theme.of(context).colorScheme.primary,
        tabs: const [
          Tab(icon: Icon(Icons.list)),
          Tab(icon: Icon(Icons.search)),
          Tab(icon: Icon(Icons.favorite)),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          SearchPage(),
          SearchPage(),
          SearchPage(),
        ],
      ),
    );
  }
}
