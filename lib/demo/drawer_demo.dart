import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('李京珂', style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('lijingke@hotmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i.loli.net/2021/05/26/OhljdbosARrM8NE.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage('https://i.loli.net/2021/05/26/gmrUD1dBJvqQpzN.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.6), BlendMode.hardLight)
                )
            ),
          ),
          ListTile(
            title: Text('Messages', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}