import 'package:screenchange/second_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color(0xff764adc),

      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
        UserAccountsDrawerHeader(
        decoration: BoxDecoration(
        color: Color(0xff764adc),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage('https://images.pexels.com/photos/14391133/pexels-photo-14391133.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ), accountName: Text('priya'), 
          accountEmail: Text('priyakaruturi@gmail.com'),
        ),
      ListTile(
          leading: Icon(Icons.home),
          title: Text('Page 1'),
          onTap: (){
            Navigator.pushNamed(context, secondscreen.id);
          }
      ),
      ListTile(
          leading: Icon(Icons.calendar_month),
          title: Text('Page 2'),
          onTap: (){
            Navigator.pushNamed(context, HomeScreen.id);
          }
      ),
      ],
    )
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Center(
    child: TextButton(
    onPressed: () {
    Navigator.pushNamed(context, secondscreen.id);
// Navigator.push(
// context, MaterialPageRoute(builder:

    (context) => secondscreen();
// )
    },
    child: Text('screen A'),
    ),
    )
    ],
    ),

    );
    }
}

