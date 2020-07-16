import 'package:flutter/material.dart';
import 'package:flutterprofile/generated/l10n.dart';
import 'package:flutterprofile/resource/app_colors.dart';
import 'package:flutterprofile/resource/app_dimens.dart';


import '../../../../journible/lib/screens/base_screen.dart';

class ShareScreen extends BaseScreen {

  @override
  ShareState createState() {
    return ShareState();
  }

}

class ShareState extends BaseState<ShareScreen> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.TRANSPARENT_BACKGROUND_COLOR,
      body: Column(
        children:<Widget>[
          Container(
              color: AppColors.PRIMARY_COLOR,
              height: 360,
              child: Container(
                margin: EdgeInsets.only(top:AppDimens.MARGIN_TOP_DEFAULT_OF_SCREEN,left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(S.of(context).share_that_journible_feeling ,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18.0) ,),
                    SizedBox(height: 8),
                    Text(S.of(context).share_help_your_friends ,style:TextStyle(color: Colors.white54,fontStyle:FontStyle.italic, fontSize: 10.0) ,),
                    SizedBox(height: 16),
                    Image.asset(
                      'assets/back_ground.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height:200,
                    ),

                  ],
                ),
              )
          ),
          SizedBox(height: 8,),
          Text(S.of(context).share_send_invite,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 12.0),),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: AppColors.BLUE_BG_BUTTON_COLOR,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(2.0)
                ),
                height: 32,
                width: 100,
                child: FlatButton.icon(
                  icon: Icon(Icons.message), //`Icon` to display
                  label: Text(S.of(context).share_text,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 10.0)), //`Text` to display
                  onPressed: () {
                    //Code to execute when Floating Action Button is clicked
                    //...
                  },
                ),
              ),
              SizedBox(width: 16,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(2.0)
                ),
                height: 32,
                width: 100,
                child: FlatButton.icon(
                  icon: Icon(Icons.share), //`Icon` to display
                  label: Text(S.of(context).share,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 10.0)), //`Text` to display
                  onPressed: () {
                    //Code to execute when Floating Action Button is clicked
                    //...
                  },
                ),
              )

            ],
          ),

        ]


      ),
    );
  }
}