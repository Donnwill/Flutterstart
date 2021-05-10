import 'package:flutter/material.dart';
import 'menulist.dart';
import '../routes/pageRoute.dart';
import '../navigationDrawer/navigationDrawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/homePage';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FrontPageState();
  }
}

class _FrontPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              'Coolwills',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              child: IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    showSearch(context: context, delegate: DataSearch());
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      drawer: NavigationDrawer(),
      body: Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2.0,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Sharing pop-up thoughts',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Overpass',
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      'assets/me.jpg',
                      width: 150.0,
                      height: 150.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Search functionality on AppBar
class DataSearch extends SearchDelegate<String> {
  final searchList = [
    'About',
    'Contact Us',
    'Home',
    'College Life',
  ];

  final suggestion = [
    'Home',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? suggestion
        : searchList.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.search_sharp),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.grey,
              ),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.black)),
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
