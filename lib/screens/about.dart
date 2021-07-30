import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:url_launcher/url_launcher.dart';

import '../widgets/HomeDrawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  static const routeName = '/aboutUs';

  Widget headline(String headline, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        headline,
        style: Theme.of(context).textTheme.headline3,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget body(String body, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        body,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        title: Text('About Us'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Scrollbar(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'assets/images/avian_devs2.png',
                  ),
                ),
                headline('Avian is all about Designers.', context),
                body(
                    'We collaborate with you and your team to empathise, be creative, and run successful '
                    'Design Sprints to leverage Design Thinking in your product journey!',
                    context),
                headline('Our Goals', context),
                body(
                    'To provide long-lasting relationships based on trust and reliability. '
                    'We strive to give you as well as your customers a memorable and pleasant experience. '
                    'We make sure we do your job as efficiently and promptly as possible. ',
                    context),
                headline('Learn more about us at ', context),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'Avian Design',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://www.aviandesign.in/');
                        },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
