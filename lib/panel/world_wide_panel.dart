import 'package:covvid19app/widgets/info_cart.dart';
import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  final Map worldWide;
  final Map historyData;

  const WorldWidePanel({Key key, this.historyData,this.worldWide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        children: <Widget>[
          InfoCart(
            title: 'cases',
            iconColor: Colors.blue[100],
            affectedNum: worldWide['cases'],
            cardColor:Colors.blue ,
            historyData: historyData,
            press: (){},
          ),
          //null
          InfoCart(
            title: 'active',
           iconColor: Colors.red[100],
            affectedNum:worldWide['active'],
            cardColor: Colors.red,
            press: (){},
            historyData: null,
          ),

          InfoCart(
            title: 'recovered',
            iconColor: Colors.green[100],
            affectedNum: worldWide['recovered'],
            cardColor: Colors.green,
            historyData: historyData,
            press: (){},
          ),
          InfoCart(
            title: 'deaths',
            iconColor: Colors.grey[100],
            affectedNum: worldWide['deaths'],
            cardColor: Colors.grey,
            historyData: historyData,
            press: (){},
          ),
        ],
      ),
    );
  }
}

//class StatusPanel extends StatelessWidget {
//  final Color panelColor;
//
//  final Color textColor;
//
//  final String title;
//
//  final String count;
//
//  const StatusPanel(
//      {Key key, this.panelColor, this.textColor, this.title, this.count})
//      : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    double width = MediaQuery.of(context).size.width;
//    return Container(
//      margin: EdgeInsets.all(5.0),
//      color: panelColor,
//      height: 80,
//      width: width / 2,
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Text(
//            title,
//            style: TextStyle(
//                fontWeight: FontWeight.bold, color: textColor, fontSize: 16.0),
//          ),
//          Text(
//            count,
//            style: TextStyle(
//                fontWeight: FontWeight.bold, color: textColor, fontSize: 16.0),
//          ),
//        ],
//      ),
//    );
//  }
//}
