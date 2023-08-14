import 'package:flutter/material.dart';

class secondscreen extends StatefulWidget {
  static const String id = 'screen two';
  const secondscreen({super.key});
  @override
  State<secondscreen> createState() => _secondscreenState();
}
class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer App'),
        backgroundColor: const Color(0xff764adc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/15178696/pexels-photo-15178696/free-photo-of-wood-light-nature-dark.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                  title: Text('priya'),
                  onTap: (){
                  Navigator.pushNamed(context, secondscreen.id);

                  },
                  );
                }),
          )
        ],
      ),
    );
  }
}