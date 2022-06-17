import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/search';

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search for a Show"),
        actions: const [
          IconButton(icon: Icon(Icons.notifications), onPressed: null),
        ],
      ),
      body: const Text("Search Page"),
    );
  }
}
