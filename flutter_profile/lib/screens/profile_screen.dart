import 'package:flutter/material.dart';
import 'package:flutterprofile/generated/l10n.dart';
import 'package:flutterprofile/resource/app_colors.dart';
import 'package:flutterprofile/resource/app_dimens.dart';
import 'package:flutterprofile/screens/share_screen.dart';


import 'base_screen.dart';

class ProfileScreen extends BaseScreen {

  @override
  ProfileState createState() {
    return ProfileState();
  }

}

class ProfileState extends BaseState<ProfileScreen> {
  bool _isSharingShowing=false;
  @override
  void initState() {
    super.initState();
  }

  void _showingSharingScreen(){
    setState(() {
      _isSharingShowing=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.TRANSPARENT_BACKGROUND_COLOR,
      body: Center(
          child:
          _isSharingShowing?ShareScreen():
          Container(
            margin: new EdgeInsets.only(top: AppDimens.MARGIN_TOP_DEFAULT_OF_SCREEN),
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
                                Text(S.of(context).profileJournible,style: TextStyle(color: Colors.white24,fontWeight: FontWeight.bold, fontSize: 26.0),),
                                Container(
                                    margin: new EdgeInsets.only(top: 18.0,),
                                    child: Text(S.of(context).profile,style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold, fontSize: 24.0),)
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
                SizedBox(height: 20,),
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                        margin:EdgeInsets.only(top: 50),
                        padding:  EdgeInsets.only(top: 24,bottom: 24,left: 32,right: 32),
                        decoration:  BoxDecoration(
                          image:  DecorationImage(image:  AssetImage("assets/bg_avatar_light_blue.png"), fit: BoxFit.cover,),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 80,width: 60,),
                            Text('Albert Skram, 21',style: TextStyle(color: Colors.white, fontSize: 12.0)),
                            Text('Basketball',style: TextStyle(color: Colors.white, fontSize: 10.0))
                          ],
                        )
                    ),
                    Container(
                        padding: new EdgeInsets.only(top: 24,bottom: 24,left: 32,right: 32),
                      decoration: new BoxDecoration(
                        image: new DecorationImage(image: new AssetImage("assets/bg_avatar_blue.png"), fit: BoxFit.cover,),
                      ),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage('https://cdn.vietnammoi.vn/stores/news_dataimages/vudt/112017/29/23/5204_ebvv-fyfzhap5408766-1497427103-2487-8512-1511842926.jpg'),
                          ),
                          SizedBox(height: 8,),
                          Text('Albert Skram, 21',style: TextStyle(color: Colors.white, fontSize: 12.0)),
                          Text('Basketball',style: TextStyle(color: Colors.white, fontSize: 10.0))
                        ],
                      )
                    ),

                  ],
                ),
                SizedBox(height: 60,),
                FlatButton(

                  color: AppColors.OVERLAY_BACKGROUND_COLOR_BUTTON,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.only(left:24,right: 24,top: 8,bottom: 8),
                  splashColor: Colors.blueAccent,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    S.of(context).profileJoinJourniblePremium,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _showingSharingScreen();
                        },
                        child: Container(
                            width: 100,
                            height: 90,
                            margin:  EdgeInsets.only(left:24.0),
                            padding: EdgeInsets.all(16),
                            color: AppColors.PRIMARY_COLOR,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.group, color: Colors.white54),
                                Text(S.of(context).profileShareWithATeammate,textAlign: TextAlign.center,style: TextStyle(color: Colors.white54, fontSize: 10.0))
                              ],
                            )
                        ),

                      ),

                      Container(
                          width: 100,
                          height: 90,
                          margin:  EdgeInsets.only(left:8.0,right: 8),
                          padding: EdgeInsets.all(16),
                          color: AppColors.PRIMARY_COLOR,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.white54),
                              Text("Rate journible \n5-stars",textAlign: TextAlign.center,style: TextStyle(color: Colors.white54, fontSize: 10.0))
                            ],
                          )
                      ),
                      Container(
                          width: 100,
                          height: 90,
                          margin:  EdgeInsets.only(right: 24),
                          padding: EdgeInsets.all(16),
                          color: AppColors.PRIMARY_COLOR,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.message, color: Colors.white54),
                              Text(S.of(context).profileGetInTouch,textAlign: TextAlign.center,style: TextStyle(color: Colors.white54, fontSize: 10.0))
                            ],
                          )
                      ),

                    ]
                ),
              ],
            ),
          )
      ),
    );
  }
}