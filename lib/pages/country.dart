import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List counteriesData;

  fetchCounteriesWideData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      counteriesData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchCounteriesWideData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('country status'),
      ),
      body: counteriesData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 10),
                          blurRadius: 10),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              counteriesData[index]['country'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Image.network(
                              counteriesData[index]['countryInfo']['flag'],
                              height: 50,
                              width: 60,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          children: <Widget>[
                            Text('ConFIRMED:' +counteriesData[index]['cases'].toString(),
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                            ),
                            Text('ACTIVE'+counteriesData[index]['active'].toString(),
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                            ),
                            Text('RECOVERED'+counteriesData[index]['recovered'].toString(),
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                            ),
                            Text('deaths'+counteriesData[index]['deaths'].toString(),
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                            ),
                          ],
                        ),
                      ),)
                    ],
                  ),
                );
              },
              itemCount: counteriesData == null ? 0 : counteriesData.length,
            ),
    );
  }
}
