import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({
    Key key,
}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: MediaQuery.removePadding(context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ClipOval(
                        child: Image(image: AssetImage("Images/garden.png"),
                        width: 80,),
                      ),
                    ),
                    Text("Garden",style: TextStyle(
                      fontFamily: "ShadowsIntoLight",
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.add),
                      title: const Text("Add account"),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: Text("Manage accounts"),
                    )
                  ],
                ),
              )
            ],
          ))
    );
  }
}