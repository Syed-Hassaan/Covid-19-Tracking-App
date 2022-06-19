import 'package:covid_tracker19/View/world_states.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases,
      TotalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;
  DetailsScreen(
      {required this.image,
      required this.name,
      required this.totalCases,
      required this.TotalDeaths,
      required this.totalRecovered,
      required this.active,
      required this.critical,
      required this.todayRecovered,
      required this.test});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COVID-19 LIVE TRACKER"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  widget.name.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .067),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black54,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "REPORT OF CORONAVIRUS CASES",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ReusableRow(
                            title: "Total Cases",
                            value: widget.totalCases.toString()),
                        ReusableRow(
                            title: "Total Deaths",
                            value: widget.TotalDeaths.toString()),
                        ReusableRow(
                            title: "Total Recovered",
                            value: widget.totalRecovered.toString()),
                        ReusableRow(
                            title: "Active Cases",
                            value: widget.active.toString()),
                        ReusableRow(
                            title: "Critical",
                            value: widget.critical.toString()),
                        ReusableRow(
                            title: "Today Recovered",
                            value: widget.todayRecovered.toString()),
                        ReusableRow(
                            title: "Total Tested",
                            value: widget.test.toString()),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(widget.image),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
