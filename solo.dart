
import 'package:choice/choice.dart';
import 'package:flutter/material.dart';

class SoloScreen extends StatefulWidget {
  const SoloScreen({super.key});

  @override
  State<SoloScreen> createState() => _SoloScreenState();
}

class _SoloScreenState extends State<SoloScreen> {
  int tag = 1;
  List<String> options = ['Limestone', 'Slaked lime', 'Quicklime', 'Gypsum'];

String? selectedValue;

  void setSelectedValue(String? value) {
    setState(() => selectedValue = value);
  }
  // bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                height: 86,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(254, 216, 169, 0.75),
                      Color.fromRGBO(255, 192, 114, 0.96),
                    ])),
                child: const Padding(
                  padding: EdgeInsets.only(left: 45, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Points",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(112, 112, 112, 1),
                                fontFamily: "Loto"),
                          ),
                          Text(
                            "16",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 139, 0, 1)),
                          )
                        ],
                      ),
                      Text(
                        "09:59",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Image(
                        image: AssetImage('assets/images/profile_pic.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: const AlignmentDirectional(1, -1),
                children: [
                  Container(
                    height: 540,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromRGBO(254, 216, 169, 1),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 35, top: 35, right: 48),
                          child: Text(
                            "Q: Plaster of paris is prepared by using which mixture?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Loto",
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Image(
                            image: AssetImage('assets/images/pop_img.png')),
                        // ChipsChoice<int>.single(
                        //   direction: Axis.vertical,
                        //   value: tag,
                        //   onChanged: (val) => setState(() => tag = val),
                        //   choiceItems: C2Choice.listFrom<int,String>(source: options, 
                        //     value: (i, v) => i,
                        //     label: (i, v) => v,)
                        // ),

                        Choice<String>.inline(
                          clearable: true,
                          value: ChoiceSingle.value(selectedValue),
                          onChanged: ChoiceSingle.onChanged(setSelectedValue),
                          itemCount: options.length,
                          itemBuilder: (state, i) {
                            return ChoiceChip(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              selected: state.selected(options[i]),
                              onSelected: state.onSelected(options[i]),
                              selectedColor: Color.fromRGBO(253, 138, 0, 1),
                              label: SizedBox(
                                width: 250,
                                height: 30,
                                child: Text(
                                  options[i], style: TextStyle(fontSize: 16),)),
                            );
                          },
                          listBuilder: ChoiceList.createScrollable(
                            direction: Axis.vertical,
                            spacing: 10,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      top: 17,
                      right: 45,
                      child: Image(
                          image: AssetImage('assets/images/bookMark.png')))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 35,right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("View Result",style: TextStyle(fontSize: 18,color: Color.fromRGBO(253, 138, 0, 1),fontWeight: FontWeight.bold),),
                    Container(
                      height: 48,
                      width: 145,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                      color: const Color.fromRGBO(253, 138, 0, 1)),
                      child: const Center(child: Text("Next",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
