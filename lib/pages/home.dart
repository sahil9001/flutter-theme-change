import 'package:flutter/material.dart';
import 'package:hello_world/blocs/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return new Scaffold(
        appBar: AppBar(
          title: Text('My app'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.whatshot),
                onPressed: () => {
                      if (_themeChanger.getTheme() == ThemeData.dark())
                        _themeChanger.setTheme(ThemeData.light())
                      else
                        _themeChanger.setTheme(ThemeData.dark())
                    }),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70'),
                  radius: 40.0,
                  
                ),
              ),
              SizedBox(height:30.0),
              Text(
                'NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'John Jefferson',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                '8',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width:10.0),
                  Text(
                    'johnjeff@gmail.com',
                    style: TextStyle(color: Colors.grey[400], fontSize: 18.0, letterSpacing: 1.0),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
