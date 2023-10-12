import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> titlee =["+44998724" , "@Elenali" , "Flutter Dev" ] ;
  List<String> subtitlee =["Tap to change phone number" , "Username" , "Bio"] ;
  List<String> titlee2 = [ "Chat Setting" ,
  "Privacy and Security" , "Notifications and Sounds" , "Data and Storage",
  "Power Saving" , "Chat Folders" , "Devices" , "Language"];
  final List<IconData> icons1 = [
    Icons.chat_bubble_outline,
    Icons.lock_outline_rounded,
    Icons.notifications_none,
    Icons.data_saver_off_outlined,
    Icons.battery_charging_full_outlined,
    Icons.folder_open_outlined,
    Icons.laptop,
    Icons.language
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff343434),
        appBar:
        AppBar(
          toolbarHeight: 150,
            backgroundColor: Color(0xff464646),
          flexibleSpace:Stack(
            children: [
              Positioned(
                top: 24,
                child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width ,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.qr_code,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child:  CircleAvatar(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 50,
                              ),
                              radius: 30,
                              backgroundColor: Color(0xff34b8ea),
                            ) ,
                          ),
                          Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name" , style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.bold), ),
                              Text("Online" ,  style: TextStyle(color: Colors.white),)
                            ],
                          )
                        ],
                      )
                  ],
                )
              ), )
            ],
          )

          ) ,

        body: SafeArea(

          child:ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20,top: 20),
                child:  Text("Account" , style: TextStyle(fontSize:16, color: Color(0xff34b8ea) ),),
              ),
              for(int i = 0 ; i < 3 ; i++)
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Colors.black
                    )
                  )
                ),
                child: ListTile(
                  tileColor: Color(0xff343434),
                  title: Text(titlee[i],style: TextStyle(color: Colors.white),),
                  subtitle: Text(subtitlee[i] ,style: TextStyle(color: Colors.white70), ),
                  onTap: (){
                  },
                ),
              ),
              SizedBox(
                height: 20,
                child: Container(
                  color: Colors.black87,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 20),
                child:  Text("Settings" , style: TextStyle(fontSize:16, color: Color(0xff34b8ea) ),),

              ),
              for(int i = 0 ; i < 8 ; i++)
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5,
                              color: Colors.black
                          )
                      )
                  ),
                  child: ListTile(
                    tileColor: Color(0xff343434),
                    title: Text(titlee2[i],style: TextStyle(color: Colors.white),),
                    leading: Icon(icons1[i], color:  Colors.white70,),
                    onTap: (){
                    },
                  ),
                ),
            ],
          )
        ),
        floatingActionButton: MyFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      ),
    );
  }
}

class MyFloatingButton extends StatefulWidget {
  @override
  _MyFloatingButtonState createState() => _MyFloatingButtonState();
}

class _MyFloatingButtonState extends State<MyFloatingButton> {
  bool showWidget = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

      onPressed: () {
        setState(() {
          showWidget = !showWidget;
        });
      },

      child: Icon(Icons.add_a_photo_outlined),
      backgroundColor: Color(0xff34b8ea) ,
    );
  }
}
