import 'package:flutter/material.dart';

class MyContactPage extends StatelessWidget {
  const MyContactPage({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.black),
        backgroundColor:Colors.white,
       title: const Text("Contacts",
       style: TextStyle(fontSize: 24,
      fontWeight:
      FontWeight.w600,
      color:Colors.black,
        ), ),
        actions: const [
          Icon(Icons.more_vert_rounded,color: Colors.black,),],
        elevation:0,
        ),
        body: ListView(
          children:  [
           const CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1639178934813-015037aabe24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              radius:50,),
             const Center(child: Text("Millash Eshun",style: TextStyle(fontSize: 25,),)), 
              const Center(child: Text("Takoradi Ghana",style: TextStyle(fontSize: 18),)),
               Padding(
                 padding:const EdgeInsets.only(top:10, left: 150, right: 45),
                 child:Row(
                    children: const [
                    Icon(Icons.location_on,color: Colors.grey,), ],
                 ),
                 ), 
                 ListTile(
                   title: const Text("Mobile"),
                     subtitle: const Text("+233 544 235 568"),
                  trailing:  Row( 
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.up,
                    children: <Widget> [
                      Icon(Icons.message_rounded),
                      Icon(Icons.phone)
                    ],
                  ),
                 ),
                 ListTile(
                   title: const Text("Email"),
                     subtitle: const Text("Idon'twanttobelazy@gmail.com"),
                  trailing: Icon(Icons.email),
                 ),
                 ListTile(
                   title: const Text("Group"),
                     subtitle: const Text("Uni friends"),
                 ),
                 Card(
                   elevation: 5,
                   child: Text('Account Linked'),
                 )

                 ],


        ),
       
          
        );
      
      
    
  }
}