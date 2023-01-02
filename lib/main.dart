import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {



  Widget selectedCleaning(@required Color color,@required String tittle,@required String subtittle,){
    return MaterialApp(
      home:Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(left: 20),
      height: 120,
        width: 240,
      decoration: BoxDecoration(
        color: color,borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            tittle,style:TextStyle(fontSize: 22,color: Colors.white
          , ),
          ),
          SizedBox(
            height: 5,
          )
          ,
          Text(subtittle,style: TextStyle(fontSize: 19,color: Colors.white),)
        ],
      ),
    ),
    );
  }
  Widget selectedExtras(@required String image,@required String name)
  {

    return MaterialApp(
        home:Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
              border:Border.all(color: Colors.grey,width: 2)

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage(image))
          ),
          ),
    SizedBox(height: 10,),
    Text(name,style: TextStyle(fontSize: 17),),
        ],
      ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      appBar: AppBar(
        elevation: 0.0, backgroundColor: Theme
          .of(context)
          .backgroundColor,
        title: Text('Cleaning Plan', style: TextStyle(fontSize: 23),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 800,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),

        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 30),
              child: Text('Selected Cleaning',style: TextStyle(fontSize: 19,color: Colors.black,
         fontWeight:FontWeight.w500

              ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(padding: EdgeInsets.only(
                left: 30,right: 30,
              ),child: Row(
                children: [

                ],
              ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Text(
                    "Selected Extras",style: TextStyle(
                    fontSize: 20,color: Colors.black,
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20,),
                    child: Container(
                      height: 300,
                      child: GridView.count(crossAxisCount: 2,
                      crossAxisSpacing: 12,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1.30,
                        children: [
                         selectedExtras(

                             Image.asset('assets/images/cook.jpg',height: 5,width: 5,).toString(),
                             'cooking'),



                          selectedExtras(Image.asset('assets/images/repair.jpg').toString(), 'repairing'),
                          selectedExtras(Image.asset('assets/images/shirt1.jpg',).toString(), 'laundary'),
                          selectedExtras(
                              Image.asset('assets/images/img.jpg').toString(), 'img')
                        ],
                      ),

                    ),

                  ),
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
