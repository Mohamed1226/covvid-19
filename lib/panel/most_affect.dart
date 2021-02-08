
import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countryData;

  const MostAffectedPanel({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
          child: Row(
            children: <Widget>[
              Image.network(
                countryData[index]['countryInfo']['flag'],
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(width: 10.0,),
              Text(
                countryData[index]['country'],
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(width: 10.0,),
              Text(
                countryData[index]['deaths'].toString(),
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
      itemCount: 5,
    );
  }
}
