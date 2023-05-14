import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../Utils/Constants/constatnts.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);
  final bool runCupertinoApp = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Seeting",style: TextStyle(
          fontSize: 20
        ),),
        backgroundColor: ColorApp.primaryColor,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.star,color: ColorApp.yallowColor,),
                title: Text('Ratting App'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.share),
                title: Text('share'),
              ),


            ],
          ),
        ],
      ),
    );
  }
}






