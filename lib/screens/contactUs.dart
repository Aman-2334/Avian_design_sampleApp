import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/HomeDrawer.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);
  static const routeName = '/contactUs';
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Widget socialButton(String file) {
    return TextButton(
      onPressed: () {},
      child: SizedBox(
        height: 35,
        width: 35,
        child: SvgPicture.asset(file),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      drawer: HomeDrawer(),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    AppBar().preferredSize.height,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Text(
                      'Want to add Super powers to your design ?',
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text('Get your free consultancy!',
                            style: Theme.of(context).textTheme.headline3),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.rule,
                              size: 25,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 300,
                              child: Text(
                                'Let\'s get down to discussing your project',
                                style: Theme.of(context).textTheme.bodyText1,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 20,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Book Now',
                              style: Theme.of(context).textTheme.button,
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (states) {
                                  return Theme.of(context).buttonColor;
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Email : info@aviandesign.in',
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Call us at \n\+1 812 558 3209 || \+91 9354906525',
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Visit us \n91 springboard 7th Block, Koramangala \nBanglore India',
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 20,
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.maps_home_work,
                              color: Colors.amber,
                            ),
                            label: Text(
                              'Directions',
                              style: Theme.of(context).textTheme.button,
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (states) {
                                  return Theme.of(context).buttonColor;
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Have a look at us!',
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                socialButton('assets/brands/behance.svg'),
                                socialButton('assets/brands/facebook.svg'),
                                socialButton('assets/brands/instagram.svg'),
                                socialButton('assets/brands/linkedin.svg'),
                                socialButton('assets/brands/twitter.svg'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
