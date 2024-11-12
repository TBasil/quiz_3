import 'package:flutter/material.dart';

class ListGridExample extends StatefulWidget {
  const ListGridExample({super.key});

  @override
  State<ListGridExample> createState() => _ListGridExampleState();
}

class _ListGridExampleState extends State<ListGridExample> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('20 listing below'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'List View', icon: Icon(Icons.list)),
            Tab(text: 'Grid View', icon: Icon(Icons.grid_view)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListViewTab(),
          GridViewTab(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class ListViewTab extends StatelessWidget {
  final List<Map<String, String>> listItems = [
    {"title": "Card 1", "subtitle": "Description for Card 1"},
    {"title": "Card 2", "subtitle": "Description for Card 2"},
    {"title": "Card 3", "subtitle": "Description for Card 3"},
    {"title": "Card 4", "subtitle": "Description for Card 4"},
    {"title": "Card 5", "subtitle": "Description for Card 5"},
    {"title": "Card 6", "subtitle": "Description for Card 6"},
    {"title": "Card 7", "subtitle": "Description for Card 7"},
    {"title": "Card 8", "subtitle": "Description for Card 8"},
    {"title": "Card 9", "subtitle": "Description for Card 9"},
    {"title": "Card 10", "subtitle": "Description for Card 10"},
    {"title": "Card 11", "subtitle": "Description for Card 11"},
    {"title": "Card 12", "subtitle": "Description for Card 12"},
    {"title": "Card 13", "subtitle": "Description for Card 13"},
    {"title": "Card 14", "subtitle": "Description for Card 14"},
    {"title": "Card 15", "subtitle": "Description for Card 15"},
    {"title": "Card 16", "subtitle": "Description for Card 16"},
    {"title": "Card 17", "subtitle": "Description for Card 17"},
    {"title": "Card 18", "subtitle": "Description for Card 18"},
    {"title": "Card 19", "subtitle": "Description for Card 19"},
    {"title": "Card 20", "subtitle": "Description for Card 20"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: ListTile(
            leading: Icon(Icons.label),
            title: Text(listItems[index]['title']!),
            subtitle: Text(listItems[index]['subtitle']!),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You tapped on ${listItems[index]['title']}')),
              );
            },
          ),
        );
      },
    );
  }
}

// GridViewTab Widget with 20 Unique Cards
class GridViewTab extends StatelessWidget {
  // Define unique labels for GridView
  final List<String> gridItems = [
    "Grid Card 1", "Grid Card 2", "Grid Card 3", "Grid Card 4",
    "Grid Card 5", "Grid Card 6", "Grid Card 7", "Grid Card 8",
    "Grid Card 9", "Grid Card 10", "Grid Card 11", "Grid Card 12",
    "Grid Card 13", "Grid Card 14", "Grid Card 15", "Grid Card 16",
    "Grid Card 17", "Grid Card 18", "Grid Card 19", "Grid Card 20",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: gridItems.length,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.widgets, color: Colors.white),
                SizedBox(height: 8),
                Text(
                  gridItems[index],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}