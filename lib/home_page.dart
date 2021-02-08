import 'dart:convert';

import 'package:covvid19app/data_source.dart';
import 'package:covvid19app/localization/localization_methods.dart';
import 'package:covvid19app/main.dart';
import 'package:covvid19app/model/lang.dart';
import 'package:covvid19app/pages/country.dart';
import 'package:covvid19app/panel/info_panel.dart';
import 'package:covvid19app/panel/most_affect.dart';
import 'package:covvid19app/panel/world_wide_panel.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map worldData;

  fetchWorldWideData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  List counteriesData;

  fetchCounteriesWideData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      counteriesData = json.decode(response.body);
    });
  }

  Map historyData;

  fetchHistoryData() async {
    http.Response response =
    await http.get('https://corona.lmao.ninja/v2/historical/all');
    setState(() {
      historyData = json.decode(response.body);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchWorldWideData();
    fetchCounteriesWideData();
    fetchHistoryData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: DropdownButton(
                icon: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                          value: lang,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(lang.flag),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(lang.name),
                            ],
                          ),
                        ))
                    .toList(),
                onChanged: (Language lang) {
                  _changeLanguage(lang);
                }),
          ),
        ],
        centerTitle: false,
        title: Text(getTranslated(context, "covid_19_panel")),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              height: 100,
              color: Colors.orange[100],
              child: Text(
               getTranslated(context, 'qoute'),
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    getTranslated(context, "world_wide"),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CountryPage();
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryBlack,
                      ),
                      child: Text(
                        getTranslated(context," All_Countries"),
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            worldData == null
                ? CircularProgressIndicator()
                : WorldWidePanel(worldWide: worldData,historyData: historyData,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                getTranslated(context, "Most_Affected_Countries"),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            counteriesData == null
                ? Container()
                : MostAffectedPanel(
                    countryData: counteriesData,
                  ),
            SizedBox(
              height: 40.0,
            ),
            InfoPanel(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: Center(
                child: Text(
                  getTranslated(context,  "we_are_together"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryBlack,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeLanguage(Language lang) async {
    Locale _temp = await setLocale(lang.languageCode);
    MyApp.setLocale(context, _temp);
  }
}
