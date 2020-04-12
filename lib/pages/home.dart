import 'package:flutter/material.dart';
import 'package:hello_world/blocs/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('COVID'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Text('Welcome to my app!',
        style: TextStyle(
          fontSize: 40.0,
          fontFamily: 'Roboto' 
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          if (_themeChanger.getTheme() == ThemeData.dark())
            _themeChanger.setTheme(ThemeData.light())
          else
            _themeChanger.setTheme(ThemeData.dark())
        },
        child: Icon(Icons.brightness_6),
      ),
    );
  }
}
