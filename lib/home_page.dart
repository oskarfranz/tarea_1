import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isManSelected = false;
  bool isTimerSelected = false; 
  bool isTel1Selected = false;
  bool isTel2Selected = false;
  static const snackBar = SnackBar(
    content: Text('Únete a un club con otras personas')
  );
  static const snackBar2 = SnackBar(
    content: Text('Cuenta regresiva para el evento: 31 días')
  );
  static const snackBar3 = SnackBar(
    content: Text('Llama al número 4155550198')
  );
  static const snackBar4 = SnackBar(
    content: Text('Llama al celular 3317865113')
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text('Mc Flutter', style: TextStyle(fontWeight: FontWeight.w700),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 137, 137, 137))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: Icon(Icons.contacts_rounded, size: 50,),
                  ),
                  Column(children: [
                    Text("Flutter McFlutter", 
                      style: TextStyle(fontSize: 25),), 
                    Text("Experienced App Developer")],),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("123 Mainstreet"),
                  Text("(415) 555-0198"),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: (){
                    setState(() {
                      isManSelected = !isManSelected;
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                    }, 
                    icon: Icon(Icons.man_outlined), 
                    iconSize: 40, color: (!isManSelected)? Colors.black: Colors.indigo,
                  ),
                   IconButton(
                    onPressed: (){
                    setState(() {
                      isTimerSelected = !isTimerSelected;
                      ScaffoldMessenger.of(context).showSnackBar(snackBar2);
                    });
                    }, 
                    icon: Icon(Icons.watch_later_outlined), 
                    iconSize: 40, color: (!isTimerSelected)? Colors.black: Colors.indigo,
                  ),
                   IconButton(
                    onPressed: (){
                    setState(() {
                      isTel1Selected = !isTel1Selected;
                      ScaffoldMessenger.of(context).showSnackBar(snackBar3);
                    });
                    }, 
                    icon: Icon(Icons.smartphone), 
                    iconSize: 40, color: (!isTel1Selected)? Colors.black: Colors.indigo,
                  ),
                   IconButton(
                    onPressed: (){
                    setState(() {
                      isTel2Selected = !isTel2Selected;
                      ScaffoldMessenger.of(context).showSnackBar(snackBar4);
                    });
                    }, 
                    icon: Icon(Icons.tablet_android), 
                    iconSize: 40, color: (!isTel2Selected)? Colors.black: Colors.indigo,
                  ),
                  
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
