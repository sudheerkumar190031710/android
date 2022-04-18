import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class CovidData extends StatelessWidget {
  const CovidData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: CovidDataBuild(),
    );
  }
}
class CovidDataBuild extends StatefulWidget {
  const CovidDataBuild({Key? key}) : super(key: key);
  @override
  _CovidDataBuildState createState() => _CovidDataBuildState();
}
class _CovidDataBuildState extends State<CovidDataBuild> {
  late Future<Album> futureAlbum;
  final List<IconData> iconData = <IconData>[Icons.local_hospital_outlined,
    Icons.bloodtype_rounded,Icons.accessible_sharp];
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid 19"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot){
              if (snapshot.hasData) {
                //Text(snapshot.data!.title);
                return Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title: Text(snapshot.data!.updated.toString(),style:
                        TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("updated Cases up to Date",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.todayCases.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("todayCases",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title: Text(snapshot.data!.deaths.toString(),style:
                        TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("deaths",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.todayDeaths.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("todayDeaths",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.recovered.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("recovered",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.todayRecovered.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("todayRecovered",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title: Text(snapshot.data!.active.toString(),style:
                        TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("active",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title: Text(snapshot.data!.critical.toString(),style:
                        TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("critical",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.casesPerOneMillion.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("casesPerOneMillion",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.deathsPerOneMillion.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("deathsPerOneMillion",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title: Text(snapshot.data!.tests.toString(),style:
                        TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("tests",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.testsPerOneMillion.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("testsPerOneMillion",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.population.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("population",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.oneCasePerPeople.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("oneCasePerPeople",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.oneDeathPerPeople.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("oneDeathPerPeople",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.oneTestPerPeople.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("oneTestPerPeople",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.activePerOneMillion.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("activePerOneMillion",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.recoveredPerOneMillion.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("recoveredPerOneMillion",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.criticalPerOneMillion.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("criticalPerOneMillion",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading:
                        Icon(iconData[Random().nextInt(iconData.length)],
                          color:
                          Colors.primaries[Random().nextInt(Colors.primaries.length)],),
                        title:
                        Text(snapshot.data!.affectedCountries.toString(),style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,

                            color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                        ),),
                        subtitle: Text("affectedCountries",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,

                              color:Colors.primaries[Random().nextInt(Colors.primaries.length)]
                          ),),
                      ),
                      elevation: 9.0,
                      shadowColor:
                      Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      margin: EdgeInsets.all(30),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://disease.sh/v3/covid-19/all'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
class Album {
  final int? updated;
  final int? cases;
  final int? todayCases;
  final int? deaths;
  final int? todayDeaths;
  final int? recovered;
  final int? todayRecovered;
  final int? active;
  final int? critical;
  final int? casesPerOneMillion;
  final double? deathsPerOneMillion;
  final int? tests;
  final double? testsPerOneMillion;
  final int? population;
  final int? oneCasePerPeople;
  final int? oneDeathPerPeople;
  final int? oneTestPerPeople;
  final double? activePerOneMillion;
  final double? recoveredPerOneMillion;
  final double? criticalPerOneMillion;
  final int? affectedCountries;
  Album({
    required this.updated,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.testsPerOneMillion,
    required this.population,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
    required this.affectedCountries
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      updated : json['updated'],
      cases : json['cases'],
      todayCases : json['todayCases'],
      deaths : json['deaths'],
      todayDeaths : json['todayDeaths'],
      recovered : json['recovered'],
      todayRecovered : json['todayRecovered'],
      active : json['active'],
      critical : json['critical'],
      casesPerOneMillion : json['casesPerOneMillion'],
      deathsPerOneMillion : json['deathsPerOneMillion'],
      tests : json['tests'],
      testsPerOneMillion : json['testsPerOneMillion'],
      population : json['population'],
      oneCasePerPeople : json['oneCasePerPeople'],
      oneDeathPerPeople : json['oneDeathPerPeople'],
      oneTestPerPeople : json['oneTestPerPeople'],
      activePerOneMillion : json['activePerOneMillion'],
      recoveredPerOneMillion : json['recoveredPerOneMillion'],
      criticalPerOneMillion : json['criticalPerOneMillion'],
      affectedCountries : json['affectedCountries'],
    );
  }
}