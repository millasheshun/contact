

import 'package:flutter/material.dart';
import 'package:my_contactapp/contact_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:const MyContactApp(),
    );
  }
}

  class MyContactApp extends StatelessWidget {

    const MyContactApp ({ Key? key, }) : super(key: key);

  get floatingActionButton => null;
   
    @override
  
    Widget build(BuildContext context) {

      return Scaffold(
    appBar:AppBar(
      centerTitle: false,
      title: const Text("My Contacts",
      style: TextStyle(fontSize: 24,
      fontWeight:
      FontWeight.w600,
      color:Colors.black,
      )), 
    actions:const [
     Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
         child: CircleAvatar(radius: 25,
          backgroundImage:NetworkImage
          ("https://images.unsplash.com/photo-1639580831803-692ef0b4f6aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
          backgroundColor: Colors.white,
            ),
        ),
      )
    ],
     
       elevation:0,
       backgroundColor:Colors.white,
       bottom:  PreferredSize(
         preferredSize:const Size.fromHeight(90), child: 
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:10,vertical: 16, ),
           child: TextField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15)
                   ),
                   hintText: "Search by name or number",
                   prefixIcon: const Icon(Icons.search)

               ),
             ),
         ),
       ),
    ),
       body :
         ListView(
        padding:const EdgeInsets.all(16),
        children:const [
          Text("Recent",style:TextStyle(fontSize: 14,fontWeight:FontWeight.w600,),),
         MyChatAppWidget(
          name:"Sarfowaa",
          number:"+233 543 000 563",
          image:"https://images.unsplash.com/photo-1615875605825-5eb9bb5d52ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
           ),
          MyChatAppWidget(
            name:"Mavis Gymafi",
            number:"+233 275 789 075",
            image:"https://images.unsplash.com/photo-1639677439462-477634bd1d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          ),
          MyChatAppWidget(
            name:"Christy",
            number:"+233 267 452 679",
            image:"https://images.unsplash.com/photo-1616486788371-62d930495c44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1M3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
          ),
           Text("Contacts",style:TextStyle(fontSize: 14,fontWeight:FontWeight.w600,),),
           MyChatAppWidget(
          name:"Charity",
          number:"+233 543 934 534",
          image:"https://images.unsplash.com/photo-1615875605825-5eb9bb5d52ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
           ),
          MyChatAppWidget(
            name:"Marvin",
            number:"+233 275 867 675",
            image:"https://images.unsplash.com/photo-1639677439462-477634bd1d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          ),
          MyChatAppWidget(
            name:"Kophy",
            number:"+233 267 299 790",
            image:"https://images.unsplash.com/photo-1616486788371-62d930495c44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1M3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
          ),
          MyChatAppWidget(
            name:"Nana Esi",
            number:"+233 267 555 790",
            image:"https://images.unsplash.com/photo-1639414439979-e885964abca4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ0fHFQWXNEenZKT1ljfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
          ),
           ]),

    
    
     
 
        floatingActionButton:FloatingActionButton(onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return MyContactPage();
  }));
},
child:const Icon(Icons.add,color: Colors.white,size: 35,),),
        );
        
    
    
  }
}

class MyChatAppWidget extends StatelessWidget {
  const MyChatAppWidget({Key? key,
 required this.name, required this.number, required this.image
   }) : super(key: key);
   final String name;
    final String number;
    final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(image),),
      title: Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
     subtitle: Text(number),
     trailing:Icon(Icons.more_horiz)
     );
  }
} 