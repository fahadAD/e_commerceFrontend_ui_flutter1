import 'dart:ui';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/home1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int select=0;


    @override
  Widget build(BuildContext context) {
    Size  size=MediaQuery.of(context).size;

    List<Widget> _slider_item_f=[
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://picsum.photos/536/354",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: 250,

              ),
            ),
          ),

          Positioned(
              right: 30,
              bottom:30,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 50,color: Colors.cyan,))),

        ],
      ),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://picsum.photos/536/354",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height:  250,

              ),
            ),
          ),

          Positioned(
              right: 30,
              bottom:30,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 50,color: Colors.cyan,))),

        ],
      ),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://picsum.photos/536/354",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: 250,

              ),
            ),
          ),

          Positioned(
              right: 30,
              bottom:30,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 50,color: Colors.cyan,))),

        ],
      ),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://picsum.photos/536/354",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: 250,

              ),
            ),
          ),

          Positioned(
              right: 30,
              bottom:30,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 50,color: Colors.cyan,))),

        ],
      ),

    ];


    return Scaffold(

backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [
                Container(

                    height: 250,
                    width: MediaQuery.of(context).size.width,

                    child: PageView(
scrollDirection: Axis.horizontal,
                  children: _slider_item_f,
                  onPageChanged: (index){
                    setState(() {
                      select=index;
                    });
                  },
                )),
                Positioned(
                  bottom: 30,
                   left: 210,
                  child: CarouselIndicator(
                    color: Colors.red,
                    activeColor: Colors.green,
                    count: _slider_item_f.length,
                    index: select,
                  ),
                ),
              ],
            ),


            


            buildGridview(size),

            buildGridview(size),





          ],
        ),
      ),

    );
  }



    Widget buildGridview(Size size) {
      return Column(
            children: [

              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Trending",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 10),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:ElevatedButton(onPressed: (){}, child: Text("See More",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 2),)),
                  ),
                ],
              ),

              GridView.builder(
                  itemCount: 7,
                  primary: false,
                  shrinkWrap: true,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 7.0,

                  ),

                  itemBuilder: (context,indest){

                return buildproduct(size);
              }),


            ],
          );
    }
    Widget buildproduct(Size size) {
      return Card(

             child: Stack(
               clipBehavior: Clip.none,
               children: [
                 Image.network("https://assets-global.website-files.com/600fe6e1ff56087409a9f096/605b5a558848493df14d2d13_ecommerce-product-photography.jpg",
                 height: size.height*0.5,
                   width: size.width*0.5,
                   fit: BoxFit.fill,

                 ),

                 Positioned(
                     bottom: 5,
                     child: Text("Product Name",style: TextStyle(fontSize: 20,color: Colors.cyan),)),
                 Positioned(
                     bottom: 5,
                     right: 5,
                     child: ElevatedButton(onPressed: (){}, child: Icon(Icons.shopping_cart_outlined,size: 30,))),
                 Positioned(
                     bottom: 40,
                     right: 5,
                     child: ElevatedButton(onPressed: (){}, child: Icon(Icons.monetization_on,size: 30,)))
               ],
             ),
           );
    }
    Widget buildSlidder() {
      return SizedBox(
               height: 250,
               child: ListView.builder(
                 itemCount: 4,
                 primary: false,
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (BuildContext context, int index) {


                 return Stack(
                   clipBehavior: Clip.none,
                   children: [
                     Container(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Image.network("https://picsum.photos/536/354",
                         fit: BoxFit.fill,
                           width: 300,
                         ),
                       ),
                     ),

                     Positioned(
                         right: 30,
                           bottom: 70,
                         child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 50,color: Colors.cyan,))),

                   ],
                 );

               },),
             );
    }

}

