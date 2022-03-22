import 'package:bengeladmin/helpers/responsiveness.dart';
import 'package:flutter/material.dart';

AppBar appbar(BuildContext context, GlobalKey<ScaffoldState> key)=> AppBar(
 elevation: 0,
 leading: !ReponsiveWidget.isSmallScreen(context) ? 
 Row(children: [
   Container(
     padding: const EdgeInsets.only(left: 0),
     child: IconButton(
       onPressed: (){},
       icon: const Icon(Icons.close_sharp),
     ),
   )

 ],): IconButton(onPressed: (){key.currentState?.openDrawer();}, icon: const Icon(Icons.menu),),

title:  Row(children: [
  
  !ReponsiveWidget.isSmallScreen(context) ? 
  const Visibility(child: Text(
            "Hide AccountAdm Menu",
            style:  TextStyle( color:Colors.black, fontSize: 12),
          )):
          const Visibility(child: Text(
            "Show AccountAdm",
            style:  TextStyle(color:Colors.black,fontSize: 12),
          )),

          Expanded(child: Container(),),
          Column(children: [
            
            IntrinsicHeight(
              child: Row(children: [
                IconButton(
                  onPressed: (){},
                  icon:  const Icon(
                            Icons.dashboard_sharp,
                            color:  Color.fromARGB(255, 64, 78, 202),
                          ),
                ),
                       const  Padding(
                          padding: 
                           EdgeInsets.only(top:8.0, bottom:8.0),
                          child:   VerticalDivider(
                            thickness: 0,
                            width: 10,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                  onPressed: (){},
                  icon:
                         const Icon(
                          Icons.video_call,
                          color:  Color.fromARGB(255, 64, 78, 202),
                        )),
                        const Padding(
                          padding: 
                           EdgeInsets.only(top:8.0, bottom:8.0),
                          child: VerticalDivider(
                          color:  Color.fromARGB(255, 5, 1, 1),
                        )),
                         const Text(
                          'Home',
                          style:
                               TextStyle(color: Color.fromARGB(255, 64, 78, 202), fontSize: 12),
                        ),
                       const Padding(
                          padding: 
                           EdgeInsets.only(top:8.0, bottom:8.0),
                          child: VerticalDivider(
                          color: Colors.black,
                        )),
                        
                        const  Text(
                          'Help',
                          style:
                               TextStyle(color: Color.fromARGB(255, 18, 29, 131), fontSize: 12),
                        ),
                         const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              color: const Color.fromARGB(255, 18, 29, 131),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 10),
                              child:  const Text(
                                "Logout",
                                style:
                                     TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
            
              ],),
            ),
          
          const Text('Bengel Adminsitration', style: TextStyle(fontSize:12, color:Colors.black),),
          
                    ],
                  ),
]));
              
              
           

