import 'package:flutter/material.dart';

class CongratulationsScreen extends StatefulWidget {
  const CongratulationsScreen({super.key});

  @override
  State<CongratulationsScreen> createState() => _CongratulationsScreenState();
}

class _CongratulationsScreenState extends State<CongratulationsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Result",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Loto'),)),
          leading:const Icon(Icons.arrow_back_ios_new_rounded, color: Color.fromRGBO(253, 138, 0, 1),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: const Image(image: AssetImage('assets/images/profile_pic.png')),
              ),
            )
          ],
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
            const SizedBox(
              height: 200,
              width: 193,
              child: Image(image: AssetImage('assets/images/trophy.png')),
            ),
            const SizedBox(height: 20,),
            const Text('Congratulations', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,fontFamily: 'Lato'),),
            const SizedBox(height: 10,),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style: TextStyle(fontSize: 10,color: Colors.black45,fontWeight: FontWeight.w700),),
            const SizedBox(height: 35,),
            const Text('Your Score',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,fontFamily: "lato"),),
            RichText(text: const TextSpan(
              children: [
                TextSpan(
                  text: "28",style: TextStyle(fontSize: 24,color: Color.fromRGBO(255, 140, 0, 1),fontWeight: FontWeight.w700, fontFamily: 'Loto')
                ),
                TextSpan(
                  text: "/30",style: TextStyle(fontSize: 24,color: Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w700, fontFamily: 'Loto')
                )
              ]
            )),
            SizedBox(height: 50,),
            Container(
              height: 48,
              width: 235,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
              color: const Color.fromRGBO(253, 138, 0, 1)),
              child: const Center(child: Text("Take new quiz",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
            )
          ]),
        ),
      ),
    );
  }
}
