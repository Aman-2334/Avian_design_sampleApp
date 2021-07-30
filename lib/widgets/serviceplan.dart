import 'package:flutter/material.dart';

class ServicePlan {
  final BuildContext context;
  ServicePlan(this.context);

  Widget columnItem(String label) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  Widget conceptPlan() {
    return Column(
      children: [
        columnItem('- Define Goals'),
        columnItem('- User Personas'),
        columnItem('- User Interviews'),
        columnItem('- Use Case Scenario'),
        columnItem('- Brainstorming'),
        columnItem('- Impact vs Feasibility Analysis'),
        columnItem('- Wireframing'),
        columnItem('- High Fidelity Screens'),
        columnItem('- Responsive Design'),
        columnItem('- Prototype'),
        columnItem(
            'From : \$ 1949+ \nEffort Est: 100 - 120 Hours  Price: 20 USD/Hour\n2 Weeks (25 Screens)'),
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 20,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Book Now',
              style: Theme.of(context).textTheme.button,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) {
                  return Theme.of(context).buttonColor;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget startUpPlan() {
    return Column(
      children: [
        columnItem('Everything in the Concept package +'),
        columnItem('- User Testing'),
        columnItem('- Journey Mapping'),
        columnItem('- Identifying Pain Point'),
        columnItem('- Brainstorming'),
        columnItem('- Impact vs Feasibility Analysis'),
        columnItem('- Wireframing'),
        columnItem('- High Fidelity Screens'),
        columnItem('- Responsive Design'),
        columnItem('- Prototype'),
        columnItem(
            'From : \$ 4499+ \nEffort Est: 225 - 300 Hours  Price: 20 USD/Hour\n4 Weeks (100 Screens)'),
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 20,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Book Now',
              style: Theme.of(context).textTheme.button,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) {
                  return Theme.of(context).buttonColor;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildToScalePlan() {
    return Column(
      children: [
        columnItem(
            'Get a series of sprints tailored to design your product for scale!'),
        columnItem('- Define'),
        columnItem('- Empathise '),
        columnItem('- Ideate '),
        columnItem('- Prototype'),
        columnItem('- User Testing'),
        columnItem('- Re-iterate'),
        columnItem('- Final Design'),
        columnItem('Let us set up your design team!'),
        columnItem(
            'From : \$ 7500+ \nEffort Est: 500+ Hours  Price: 15 USD/Hour\nVariable'),
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 20,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Book Now',
              style: Theme.of(context).textTheme.button,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) {
                  return Theme.of(context).buttonColor;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
