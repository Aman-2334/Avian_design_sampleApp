import 'package:flutter/material.dart';

import '../screens/about.dart';
import '../screens/contactUs.dart';
import '../screens/HomePage.dart';
import '../screens/services.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  Widget drawerButton(Icon icon, String title, String routeName) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, routeName);
          },
          icon: icon,
          label: Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          )),
    );
  }

  Widget underline({Color color: Colors.blue}) {
    return SizedBox(
      height: 1,
      width: 150,
      child: Container(
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Avian designs'),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 200,
                  color: Colors.amber,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Welcome Designer',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: Colors.amber),
                ),
              ),
              underline(color: Colors.amber),
              drawerButton(Icon(Icons.home), 'Home', HomePage.routeName),
              underline(),
              drawerButton(
                  Icon(Icons.design_services), 'Services', Services.routeName),
              underline(),
              drawerButton(Icon(Icons.group), 'About Us', AboutUs.routeName),
              underline(),
              drawerButton(
                  Icon(Icons.contact_page), 'Contact', ContactUs.routeName),
              underline(),
              drawerButton(
                  Icon(Icons.settings), 'Settings', HomePage.routeName),
            ],
          ),
        ),
      ),
    );
  }
}
