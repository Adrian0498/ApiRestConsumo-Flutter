import 'package:estadisticapp/InfoCard.dart';
import 'package:flutter/material.dart';

class TabWorld extends StatelessWidget {
  const TabWorld({
    Key key,
    @required this.futureSummary,
  }) : super(key: key);

  final Map<String, dynamic> futureSummary;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: futureSummary.length > 0
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InfoCard(
                      texto: "Casos Recientes",
                      casos: futureSummary['NewConfirmed'],
                      fondo: Colors.orangeAccent,
                    ),
                    InfoCard(
                      texto: "Recuperados Recientes",
                      casos: futureSummary['NewRecovered'],
                      fondo: Colors.green,
                    ),
                    InfoCard(
                      texto: "Descesos Recientes:",
                      casos: futureSummary['NewDeaths'],
                      fondo: Colors.redAccent,
                    ),
                    InfoCard(
                      texto: "Casos confirmados",
                      casos: futureSummary['TotalConfirmed'],
                      fondo: Colors.blueAccent,
                    ),
                    InfoCard(
                      texto: "Total Descesos",
                      casos: futureSummary['TotalDeaths'],
                      fondo: Colors.red,
                    ),
                    InfoCard(
                      texto: "Total Recuperados",
                      casos: futureSummary['TotalRecovered'],
                      fondo: Colors.cyan,
                    )
                  ],
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
