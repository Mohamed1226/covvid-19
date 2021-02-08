import 'package:covvid19app/localization/localization_methods.dart';
import 'package:covvid19app/widgets/line_chart.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class InfoCart extends StatelessWidget {
  final String title;
final Map historyData;
  final Color iconColor,cardColor;

  final int affectedNum;
  final Function press;

  const InfoCart(
      {Key key, this.historyData,this.cardColor,this.title, this.iconColor, this.affectedNum, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Container(

        margin: EdgeInsets.all(5),
        child: GestureDetector(
          onTap: press,
          child: Container(

            width: (MediaQuery.of(context).size.width/2) -10,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color:iconColor,
                            shape: BoxShape.circle,
                          ),
//                          child: SvgPicture.asset(
//                            '',
//                            height: 12,
//                            width: 12,
//                            color: iconColor,
//                          ),
                        ),

                        Text(
                          getTranslated(context, title),
                          style: TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Color(0xFF1E2432)),
                                  children: [
                                TextSpan(
                                    text: '$affectedNum \n',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .copyWith(fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: getTranslated(context, "people"),
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 2,
                                  ),
                                )
                              ])
                          ),
                        ),
                        Expanded(

                          child: LineChartReport(historyData: historyData,title: this.title,),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
