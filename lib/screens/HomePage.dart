import 'package:flutter/material.dart';

import '../widgets/HomeDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/homepage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget dashboardItems(String info, String label) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              info,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  Widget mainColumnItems(String label, IconData icon) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        //border: Border.all(color: Colors.white),
        color: Colors.black,
      ),
      child: ListTile(
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        trailing: IconButton(
          color: Colors.amber,
          onPressed: () {},
          icon: Icon(
            icon,
          ),
        ),
      ),
    );
  }

  Widget newsItems(String label, {IconData icon = Icons.article}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      child: ListTile(
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        trailing: IconButton(
          color: Colors.amber,
          onPressed: () {},
          icon: Icon(
            icon,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        title: Text('Avian Designs'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Scrollbar(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.white),
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'DASHBOARD',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.blue),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        dashboardItems('90%', 'Progress'),
                        dashboardItems('Concept', 'Service Plan'),
                        dashboardItems('76', 'Hours'),
                      ],
                    )
                  ],
                ),
              ),
              mainColumnItems('PROGRESS REPORT', Icons.download_sharp),
              mainColumnItems('CURRENTLY WORKING TEAM', Icons.keyboard_tab),
              mainColumnItems(
                  'CONNECT WITH THE TEAM', Icons.connect_without_contact),
              mainColumnItems(
                  'SWITCH SERVICE PLAN', Icons.published_with_changes),
              mainColumnItems('RAISE A TICKET', Icons.confirmation_num),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //  border: Border.all(color: Colors.white),
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'WHATS NEW!',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.blue),
                      ),
                    ),
                    newsItems('Avail a 30% discount on Startup plan this week.',
                        icon: Icons.local_offer),
                    newsItems('Sneak peek into our projects', icon: Icons.link)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
