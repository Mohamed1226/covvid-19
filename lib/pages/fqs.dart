import 'package:covvid19app/data_source.dart';
import 'package:covvid19app/localization/localization_methods.dart';
import 'package:flutter/material.dart';


class FAQpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context, "faqs"),),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ExpansionTile(
          title: Text( getLangCode(context) ==ARABIC ? DataSource.questionAnswersAr[index]["question"]:DataSource.questionAnswers[index]["question"],),
          children: <Widget>[
            Text( getLangCode(context) ==ARABIC ? DataSource.questionAnswersAr[index]['answer']:DataSource.questionAnswers[index]['answer'],),

          ],
        );
      },itemCount: DataSource.questionAnswers.length,),
    );
  }
}
