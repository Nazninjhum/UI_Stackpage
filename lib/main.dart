import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Implementation',style: TextStyle(fontSize: 25,color: Colors.white),),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              image: AssetImage('images/hp1.jpg'),
              height: double.infinity,
              fit: BoxFit.cover,),
            Positioned(
              bottom: 20, left: 20,
              child: Container(
                decoration: BoxDecoration(),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text('Amazing Colorful Christmas Photography',
                      style: TextStyle(fontSize: 30, color: Colors.white,
                        fontWeight: FontWeight.bold, letterSpacing: 3,),),
                    Row(
                      children: [
                        ActionChip(
                          backgroundColor: Colors.green,
                          label: Text('    Christmas    ', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20,
                            color: Colors.white,),),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ActionChip(
                          backgroundColor: Colors.green,
                          label: Text('   Gift   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


