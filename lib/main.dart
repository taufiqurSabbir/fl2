import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      home:HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Home'),
      ),
      drawer:  Drawer(
        child: ListView(
          children:  [
            Container(
              height: 80,
              child: Center(child: Text(
                'Home'
                ,style:
              TextStyle(
                color:Colors.grey[200],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              )),
              color: Colors.red,
            ),


            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home', style: TextStyle(fontSize: 20),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
              },
            ),
            ListTile(
              selectedColor: Colors.red,
              leading: Icon(Icons.manage_accounts_sharp),
              title: Text('Members',
                style:TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>members()));
              },
            ),

            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Service',
                style:
                TextStyle(
                    fontSize: 20
                ),),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>service()));
              },

            ),


          ],
        ),
      ),
      body: Center(
        child: Text('This is Home page-1', style: TextStyle(fontSize: 30,color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        backgroundColor:Colors.red,
        child: Text('2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'home',

        ),
        BottomNavigationBarItem(icon: Icon(Icons.manage_accounts),
            label: 'home'

        ),
        BottomNavigationBarItem(icon: Icon(Icons.medical_services_outlined),
            label: 'home'

        ),
      ],),
    );
  }
}



class members extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Members'),
      ),
      drawer:  Drawer(
        child: ListView(
          children:  [
            Container(
              height: 80,
              child: Center(child: Text(
                'Member Page'
                ,style:
              TextStyle(
                color:Colors.grey[200],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              )),
              color: Colors.green,
            ),


            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home', style: TextStyle(fontSize: 20),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
              },
            ),
            ListTile(
              selectedColor: Colors.green,
              leading: Icon(Icons.manage_accounts_sharp),
              title: Text('Members',
                style:TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>members()));
              },
            ),

            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Service',
                style:
                TextStyle(
                    fontSize: 20
                ),),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>service()));
              },

            ),


          ],
        ),
      ),
      body: Center(
        child: Text('This is member page-2', style: TextStyle(fontSize: 30,color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        backgroundColor:Colors.green,
        child: Text('2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
      ),
    );
  }
}


class service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Service'),
      ),
      drawer:  Drawer(
        child: ListView(
          children:  [
            Container(
              height: 80,
              child: Center(child: Text(
                'Service'
                ,style:
              TextStyle(
                color:Colors.grey[200],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              )),
              color: Colors.deepPurple,
            ),


            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home', style: TextStyle(fontSize: 20),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
              },
            ),
            ListTile(
              selectedColor: Colors.deepPurple,
              leading: Icon(Icons.add),
              title: Text('Members',
                style:TextStyle(
                    fontSize: 20
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>members()));
              },
            ),

            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Service',
                style:
                TextStyle(
                    fontSize: 20
                ),),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>service()));
              },

            ),


          ],
        ),
      ),
      body: Center(
        child: Text('This is service page-3', style: TextStyle(fontSize: 30,color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        backgroundColor:Colors.deepPurple,
        child: Text('3', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    );
  }
}