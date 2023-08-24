import 'package:flutter/material.dart';

void main() {
  runApp(const CS());
}

class CS extends StatelessWidget {
  const CS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            leading:Icon(Icons.search,size: 70,) ,
            actions: const [
              Icon(Icons.menu,size: 90,)            ],
            title:const Text('My App') ,
            centerTitle:true ,
            toolbarHeight: 90,
            leadingWidth: 100,
          ),
          body:SizedBox(
            width: double.infinity,
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildContainer(color: Colors.blue, text: 'IT'),
                buildContainer(color: Colors.pink, text: 'CS'),

              ],
            ),
          )
        ),
      ),
    );
  }
}

//Build a component
Container buildContainer({required Color color,required String text})
{
  return Container(
    padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 30) ,
    width: 100,
    margin: const EdgeInsets.only(
        top: 20,
        left: 20
    ),
    height: 100,
    //
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100)
    ),
    child: Text(text,style: TextStyle(color: Colors.white,fontSize: 30),),
  );

}
