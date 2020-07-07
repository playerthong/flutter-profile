import 'package:flutter/material.dart';
import 'package:flutterprofile/generated/l10n.dart';
import 'package:flutterprofile/resource/app_colors.dart';


import 'base_screen.dart';

class StoryScreen extends BaseScreen {

  @override
  StoryState createState() {
    return StoryState();
  }

}

class StoryState extends BaseState<StoryScreen> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.TRANSPARENT_BACKGROUND_COLOR,
      body: Center(
        child:Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      margin: new EdgeInsets.only(top: 60.0,right: 16),
                      child: Text(S.of(context).story_give_feedback,style: TextStyle(color: Colors.white, fontSize: 12.0,),)
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: new EdgeInsets.only(top: 20.0,left: 48),
                      child: Text(S.of(context).story_good_evening_sofus,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18.0),)
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: new EdgeInsets.symmetric(horizontal: 40,vertical: 100),
                    margin: new EdgeInsets.symmetric(horizontal: 52,vertical: 48),
                    decoration: BoxDecoration(
                        color: AppColors.SECOND_COLOR,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                            bottomLeft:Radius.circular(12.0) ,
                            bottomRight: Radius.circular(12.0))),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/paper.png',
                          fit: BoxFit.cover,
                          width: 72,
                          height: 72,
                        ),
                        SizedBox(height: 16),
                        Text(S.of(context).story_make_today_story,style: TextStyle(color: Colors.white70, fontSize: 12.0,))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}