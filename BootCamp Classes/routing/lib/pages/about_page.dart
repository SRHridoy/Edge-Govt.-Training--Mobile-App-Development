// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About EDGE Program',style: TextStyle(color: Colors.white,),),centerTitle: true,),
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage('edge.png'))),
              child: Text(''),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('About',style: TextStyle(color: Colors.blue,fontSize: 50,fontWeight: FontWeight.bold),)),
            ),
            Center(
              child: Text("EDGE Project works on creating the enabling environment for digital government and the digital economy.\n\nThe project, funded by World Bank and GoB, will ensure an integrated, cloud-computing digital platform for all government agencies and improve cyber-security, which will result in savings of \$200 million in the public sector’s IT investments.Further, it will build resiliency during future crises, whereby the platform will enable the government to operate virtually and deliver critical public services to citizens and businesses.",style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
            ),

            Center(
              child: Container(
                  width: 500,
                  height: 600,
                  child: Image(image: AssetImage('about.png'))),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Vision',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.start,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('300 million dollars in ICT exports by 2026 and support the construction of technology and knowledge-based smart and developed Bangladesh.',style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),
                ),

              ],
            ),Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Mission',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.start,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Development of skilled human resources suitable for the fourth industrial revolution; Enact technology-friendly laws and policies and build a digital economy through innovation, research and ICT industry development; Also, strengthening the Bangladesh National Digital Architecture (BNDA) with the establishment of Digital Leadership Academy (DLA) and Center for 4IR and accelerating the development of Bangladesh by ensuring cyber security, providing cloud services and providing digital literacy.",style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text('Go to Home'),style: ElevatedButton.styleFrom(padding: EdgeInsets.all(30),),),

              ),
            )
          ],
        ),
      ),
    );
  }
}
