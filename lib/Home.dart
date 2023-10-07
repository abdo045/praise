  // ignore_for_file: file_names, prefer_const_constructors

  import 'package:flutter/material.dart';


  class SephaScreen extends StatefulWidget {
    const SephaScreen({super.key});
    @override
    State<SephaScreen> createState() => _SephaScreenState();
  }

  int counter = 0, index = 0, round = 0;
  // ignore: non_constant_identifier_names
  List<String> list_PraiseAllah = [
    "سبحان اللَه",
    "الحمد للًه ",
    "اللَّهُ أَكْبَرُ",
  ];

  class _SephaScreenState extends State<SephaScreen> {
    @override
    Widget build(BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Center(
            child: Text(
              'فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَى ',
              style: TextStyle(fontSize: 20),
            ),
          ),
          flexibleSpace: const Image(
            image: AssetImage('assets/images/sappbar.jpg'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/sabeh.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 230),
            child: Column(
              children: [

                Text(
                  list_PraiseAllah[index],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20),

                Container(
                  height: 35,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(30)),
                      color: Colors.white
                  ),
                  child: Center(child: Text('عدد التسبيحات',
                    style: TextStyle(fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                  )),
                ),
                const SizedBox(height: 10),
                Text(
                  "${counter }",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    setState(() {
                      _incrementCounter();
                    });
                  },
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        "اضغط",
                        style:TextStyle(
                            color:Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Text(
                          "البدأ مرة اخري",
                          style: TextStyle(
                              color:Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _resetCounter();
                          });
                        },
                      ),
                      Text("  رقم الدورة : $round",style: TextStyle(
                          color:Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ), ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    void _incrementCounter() {
      counter++;
      if (counter == 33) {
        counter = 0;
        index++;
        if (index == 3) {
          index = 0;
          round++;
        }
      }
    }

    void _resetCounter() {
      counter = 0;
      index = 0;
      round = 0;
    }

    // ignore: unused_element

  }