import 'package:flutter/material.dart';
import 'package:flutterprofile/generated/l10n.dart';
import 'package:flutterprofile/resource/app_colors.dart';


import 'base_screen.dart';

class ProfileScreen extends BaseScreen {

  @override
  ProfileState createState() {
    return ProfileState();
  }

}

class ProfileState extends BaseState<ProfileScreen> {

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
            margin: new EdgeInsets.only(top: 60.0),
            child: Column(
              children: <Widget>[
                Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          Expanded(
                              flex: 1,
                              child: Text('')
                          ),
                          Expanded(
                            flex: 2,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Text(S.of(context).profileJournible,style: TextStyle(color: Colors.white24,fontWeight: FontWeight.bold, fontSize: 28.0),),
                                Container(
                                    margin: new EdgeInsets.only(top: 22.0,),
                                    child: Text(S.of(context).profile,style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold, fontSize: 28.0),)
                                )
                              ],
                            )
                          ),
                        Expanded(
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                    margin: new EdgeInsets.only(right: 16.0,),
                                    child:  Icon(Icons.settings, color: Colors.white54)
                                )

                              ],
                            ),
                          ),
                        ]
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                        padding: new EdgeInsets.all(24),
                      decoration: new BoxDecoration(
                        image: new DecorationImage(image: new AssetImage("assets/bg_avatar_blue.png"), fit: BoxFit.cover,),
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/paper.png',
                            fit: BoxFit.cover,
                            width: 72,
                            height: 72,
                          ),
                        ],
                      )
                    ),

                    Container(
                        margin: new EdgeInsets.only(top: 22.0,),
                        child: Text(S.of(context).profile,style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold, fontSize: 28.0),)
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
                          Text(S.of(context).storyMakeTodayStory,style: TextStyle(color: Colors.white70, fontSize: 12.0,))
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