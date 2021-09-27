import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pland_app/constants.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  PageController imageController=PageController();
  int currentImage=0;
  int currentPage=0;
  bool c1=false;
  bool c2=false;
  bool c3=false;
  bool c4=false;
  bool c5=false;
  List<String> title=["Basic Package","Standard Package","Premium Package","Premium Plus Package"];
  List<String> image=["images/image0.png","images/image1.png","images/image2.png","images/image3.png"];
  @override

  Widget build(BuildContext context) {
    Size _size=MediaQuery.of(context).size;

    return SafeArea(child: Scaffold(

      body: Container(
        child: Column(
  children: [
    Container(

      margin: EdgeInsets.only(left:_size.width/25,right:_size.width/25,top: _size.height/45 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child:Text("Hello Ahmed!",style: TextStyle(fontSize: _size.height/35,fontWeight: FontWeight.bold),)
          ),
          Container(
            child: Icon(Icons.menu,size: _size.height/35),
          )
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(top:_size.height/35),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/4,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (value){
              setState(() {
                currentImage=value;
              });

            },



            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                      height: _size.height/4,
                      child: Image.asset('images/garden-1.png',fit: BoxFit.fill,)),
                  Container(
                    margin: EdgeInsets.only(left:_size.width/25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("15% OFF",style: TextStyle(color: Colors.white,fontSize: _size.height/20,fontWeight: FontWeight.bold),),
                        Text("on your second order!",style: TextStyle(color: Colors.white,fontSize: _size.height/50,fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ],
              ),
              Image.asset('images/garden2.jpg',fit: BoxFit.fill,),
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top:_size.height/4.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:currentImage==0?Colors.white:Colors.grey,
                  ),
                ),
                SizedBox(width:10),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentImage==1?Colors.white:Colors.grey,
                  ),
                ),

              ],
            ),
          )
        ],

      ),
    ),
    Container(
      width: double.infinity,
      color: kGreenColor,

      child: Row(
        children: [
          GestureDetector(
            onTap:(){
              imageController.jumpToPage(0);
            },
            child: Container(
              width:_size.width/2,
              height: _size.height/15,

              decoration: BoxDecoration(
                  color: currentPage==0?Colors.white:kGreenColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                )
              ),
              child: Center(
                child: Text("Hire a Gardener",style: TextStyle(color:currentPage==0?Colors.black: Colors.white,fontSize: _size.height/60,fontWeight: FontWeight.w400,fontFamily: "Poppins")),
              ),
            ),
          ),
          GestureDetector(
            onTap:(){
              imageController.jumpToPage(1);
            },
            child: Container(
              width:_size.width/2,
              height: _size.height/15,

              decoration: BoxDecoration(
                  color: currentPage==1?Colors.white:kGreenColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  )
              ),
              child: Center(
                child: Text("Packages",style: TextStyle(color: currentPage==1?Colors.black: Colors.white,fontSize: _size.height/60,fontWeight: FontWeight.w400,fontFamily: "Poppins")),
              ),
            ),
          )
        ],


      ),
    ),
    Expanded(
      child: Container(
        width:double.infinity,
        child: PageView(
          controller: imageController,
          onPageChanged: (value){
            setState(() {
              currentPage=value;
            });
          },
          children: [
            Container(
              width: double.infinity,
              margin:EdgeInsets.only(top:_size.height/25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: _size.width/25),
                    child: Text("Choose services you need",style: TextStyle(color: Colors.black,fontSize: _size.height/60,fontWeight: FontWeight.bold,fontFamily: "Poppins")),
                  ),
                  Row(
                    children: [
                      Checkbox(value: c1,
                          activeColor: kGreenColor,onChanged: (value){
                        setState(() {
                          c1=!c1;
                        });
                      }),
                      Text("Lawn Moving Services")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: c2,
                          activeColor: kGreenColor,onChanged: (value){
                        setState(() {
                          c2=!c2;
                        });
                      }),
                      Text("Plant Care & Cleaning")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: c3,
                          activeColor: kGreenColor,
                          onChanged: (value){
                        setState(() {
                          c3=!c3;
                        });
                      }),
                      Text("Pest/Fungus Prevention")
                    ],
                  )
                  ,Row(
                    children: [
                      Checkbox(value: c4,
                          activeColor: kGreenColor,onChanged: (value){
                        setState(() {
                          c4=!c4;
                        });

                      }),
                      Text("Shrub Trimming & Pruning")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: c5,
                          activeColor: kGreenColor,onChanged: (value){
                        setState(() {
                          c5=!c5;
                        });
                      }),
                      Text("Lawn Moving Services")
                    ],
                  )
                  // CheckboxListTile(value: c1,title: Text("hdhh"), onChanged: (value){
                  //   setState(() {
                  //    c1=!c1;
                  //   });
                  // })
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin:EdgeInsets.all(_size.width/25),
                    child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua."),
                  ),
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemCount: image.length,
                          itemBuilder: (context,index){
                            return Container(
                                  margin: EdgeInsets.only(right: _size.width/25,left:  _size.width/25),
                                  width:double.infinity,
                                  height: _size.height/4,
                                  child: Stack(
                                    children: [
                                      Image.asset(image[index],fit: BoxFit.fill,),
                                      Center(
                                        child: Text(title[index],style: TextStyle(color:Colors.white,fontSize: _size.height/60,fontWeight: FontWeight.w400,fontFamily: "Poppins")),
                                      )
                                    ],
                                  )
                                );



                      }),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    )


  ],
),
      ),
    ));
  }
}
