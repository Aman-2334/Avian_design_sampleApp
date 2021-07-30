import 'package:flutter/material.dart';

import 'package:expandable/expandable.dart';

import '../widgets/HomeDrawer.dart';
import '../widgets/serviceplan.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);
  static const routeName = '/services';
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  Widget plans(String plan, Size size, String details, Widget planDetails) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      width: size.width * 0.9,
      child: ExpandablePanel(
        header: Container(
            padding: EdgeInsets.all(10),
            child: Text(plan, style: Theme.of(context).textTheme.headline3)),
        collapsed: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            details,
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        expanded: planDetails,
        theme: ExpandableThemeData(
            tapHeaderToExpand: true,
            hasIcon: true,
            iconColor: Colors.blue,
            tapBodyToExpand: true),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: HomeDrawer(),
      //   backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Services'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: size.width * 0.8 + size.height * 0.15,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: double.infinity,
                        height: size.width * 0.8 + size.height * 0.15,
                        child: UiUx(size),
                      ),
                      Center(
                        child: Text(
                          'UI / UX',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(fontSize: 36),
                        ),
                      ),
                    ],
                  ),
                ),
                plans(
                    'CONCEPT',
                    size,
                    'From : \$ 1949+ \nEffort Est: 100 - 120 Hours  Price: 20 USD/Hour\n2 Weeks (25 Screens)',
                    ServicePlan(context).conceptPlan()),
                plans(
                    'STARTUP',
                    size,
                    'From : \$ 4499+ \nEffort Est: 225 - 300 Hours  Price: 20 USD/Hour\n4 Weeks (100 Screens)',
                    ServicePlan(context).startUpPlan()),
                plans(
                    'BUILD TO SCALE',
                    size,
                    'From : \$ 7500+ \nEffort Est: 500+ Hours  Price: 15 USD/Hour\nVariable',
                    ServicePlan(context).buildToScalePlan()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UiUx extends StatefulWidget {
  final Size containerSize;
  const UiUx(this.containerSize, {Key? key}) : super(key: key);

  @override
  _UiUxState createState() => _UiUxState();
}

class _UiUxState extends State<UiUx> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ServicesContainer(widget.containerSize),
    );
  }
}

class ServicesContainer extends CustomPainter {
  final Size containerSize;
  double containerWidth = 0.0;
  double containerHeight = 0.0;

  ServicesContainer(this.containerSize) {
    containerWidth = 0.9 * containerSize.width;
    containerHeight = 0.9 * containerSize.width + 0.1 * containerSize.height;
  }

  void innerlogo(Canvas canvas, Size size, Offset center) {
    final paintBrush = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = containerSize.width * containerHeight * 0.00004;

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: center,
                width: containerWidth * 0.7,
                height: containerHeight * 0.7),
            const Radius.circular(25.0)),
        paintBrush);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    innerlogo(canvas, size, center);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
