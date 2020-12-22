import 'package:flutter/material.dart';
import 'package:scaled_animated_scaffold/scaled_animated_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaledAnimatedScaffold(
      appBar: ScaledAnimatedScaffoldAppBar(
        brightness: Theme.of(context).brightness,
        title: Text(widget.title),
      ),
      menuConfiguration: ScaledAnimatedScaffoldMenuConfiguration(
        header: ScaledAnimatedScaffoldMenuButton(
          icon: Icon(
            Icons.account_circle,
          ),
          label: Text('John Wilkins'),
          onPressed: () {},
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.account_circle),
              label: Text('Profile'),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.mail),
              label: Text('Mail'),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.star),
              label: Text('Favorites'),
              onPressed: () {},
            ),
            ScaledAnimatedScaffoldMenuButton(
              icon: Icon(Icons.list_alt),
              label: Text('Lists'),
              onPressed: () {},
            )
          ],
        ),
        footer: IntrinsicHeight(
          child: Row(
            children: [
              ScaledAnimatedScaffoldMenuButton(
                icon: Icon(
                  Icons.settings,
                ),
                label: Text('Settings'),
                onPressed: () {},
              ),
              VerticalDivider(),
              ScaledAnimatedScaffoldMenuButton(
                label: Text('Log out'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
