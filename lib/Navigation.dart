
import 'package:second_sestional/Hard_Dice.dart';
import 'package:second_sestional/Simple_Dice.dart';
import 'package:flutter/material.dart';


class  HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Dice App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        Row(
        children: [
        Expanded(

        child: Padding(
            padding: EdgeInsets.all(15.0),
        child: FlatButton(
          textColor: Colors.pink,
          color: Colors.black,
          child: Text(
            'Simple',
            style: TextStyle(
              color: Colors.pink
              ,
              fontSize: 50.0,
            ),
          ),
          onPressed: simpleDice,
        ),
      ),
    ),
    Expanded(

    child: Padding(
    padding: EdgeInsets.all(15.0),
    child: FlatButton(

    textColor: Colors.pink,
    color: Colors.black,
    child: Text(
    'Hard',
    style: TextStyle(
    color: Colors.pink,
    fontSize: 50.0,
    ),
    ),
          onPressed: hardDice,
          ),
    ),
    ),
        ],
          ),]

      ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Saleha Noor'),
                accountEmail: Text('Salehanoor896@gmail.com'),
                currentAccountPicture: GestureDetector(
                  onTap: ()=> _showSecondPage(context),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/image.png'),
                  ),
                )
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Phone'),
              subtitle: Text('03026570675'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('Salehanoor896@gmail.com'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),

    );
  }
void simpleDice() {
  setState(() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new SimpleDice()));
  });
}

void hardDice() {
  setState(() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new HardDice()));
  });
}
  void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
              child: Image.asset('assets/image.png'),
            ),
          ),
        ),
      ),
    );
  }
}