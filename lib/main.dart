import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       title:'Welcome to Flutter',
       home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Bars & Buttons'),
            leading: new Icon(Icons.menu), 
            
            actions: <Widget>[
              
                new IconButton(
                icon: new Icon(Icons.person),
                tooltip: 'Profile', 
                onPressed: () => {},
                ),  
            
                new IconButton(
                icon: new Icon(Icons.camera),
                tooltip: 'Snap', 
                onPressed: () => {},
                ), 
            
             ], 
          
           ),      

            bottomNavigationBar: new BottomNavigationBar(
              items: [
                 new BottomNavigationBarItem(
                   icon: new Icon(Icons.account_balance),
                   title: new Text('Account')
                 ),
              
                new BottomNavigationBarItem(
                   icon: new Icon(Icons.apps),
                   title: new Text('Apps')
                 ),

                new BottomNavigationBarItem(
                   icon: new Icon(Icons.shopping_cart),
                   title: new Text('Cart')
                 ), 

              ],//Items
            ),  
         
          body: new Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                     children: <Widget>[
                        new Text('Hello World'),
                        new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Please Enter Text",
                          ),
                        ),
                        new Checkbox(
                            value: true,
                            onChanged: (bool value) {},
                        ),
                        new Radio<int>(
                          value: 0,
                          groupValue: 0,
                          onChanged: (_){},
                        ),
     /*                   new Switch(
                          value: false,
                          onChanged: (bool value){},
                        ),
      */                  new ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[   
                            new RaisedButton(
                              child: const Text('Raised'),
                              onPressed: () {},
                            ),
                            
                            const RaisedButton(
                              child: const Text('Disabled'),
                              onPressed: null,
                            ),
                          ],     
                        ),
                     
      /*                  new ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[   
                            new FlatButton(
                              child: const Text('Flat'),
                              onPressed: () {},
                            ),
                            
                            const FlatButton(
                              child: const Text('Disabled'),
                              onPressed: null,
                            ),
                          ],    
                        ),
                       
                         new ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[   
                            new OutlineButton(
                              child: const Text('Outline'),
                              onPressed: () {},
                            ),
                            
                            const OutlineButton(
                              child: const Text('Disabled'),
                              onPressed: null,
                            ),
                          ],    
                        ),
         */            new Image.network(
                         'http://thecatapi.com/api/images/get?formet=src&type=gif',
                       ),

                    ],
                  ),
                ),
       ),      
    );        
  }
}

//leading takes the element to the extreme left of the app.
//tooltip is the text that will be displayed whenever we hold the button.