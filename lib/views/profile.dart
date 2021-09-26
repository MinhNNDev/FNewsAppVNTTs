import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlImage="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLMl3Qmub_uzuDDylzpAmQ9dn1kzwQ__fY1A&usqp=CAU";
    return Scaffold(
      body: Material(
        color: Colors.white,
        child:ListView(
          padding: EdgeInsets.only(left: 10),
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            buildHeader(
                urlImage:urlImage,
                onClicked:(){}
            ),
            const SizedBox(
              height:5,
            ),
            Divider(color: Colors.black,),

            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text:"My account",
              icon:Icons.account_circle,
              onClicked:()=>selectedItem(context,0)
            ),

            buildMenuItem(
                text:"Notifications",
                icon:Icons.notifications,
                onClicked:()=>selectedItem(context,1)
            ),

            buildMenuItem(
                text:"Settings",
                icon:Icons.settings,
                onClicked:()=>selectedItem(context,2)
            ),

            buildMenuItem(
                text:"Help Center",
                icon:Icons.help_center,
                onClicked:()=>selectedItem(context,3)
            ),

            buildMenuItem(
                text:"Log out",
                icon:Icons.logout,
                onClicked:()=>selectedItem(context,4)
            )
          ],
        ),

    )
    );
  }

  Widget buildHeader({required String urlImage,
    required VoidCallback onClicked}){
    return Column(
      children:<Widget> [
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children: <Widget>[
              CircleAvatar(backgroundImage:NetworkImage(urlImage),),
              Positioned(
                  right: -10,
                  bottom: 0,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      color: Color(0xFFF5F6F9),
                      onPressed: onClicked,
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                  )

              )
            ],
          ),
        )

      ],
    );
  }




  Widget buildMenuItem({required String text,required IconData icon,VoidCallback? onClicked}){
    final color=Colors.black;


    return Column(
      children: <Widget>[
        SizedBox(height:10),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: FlatButton(
            padding: EdgeInsets.all(10),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Color(0XFFF5F6F9),
            onPressed: onClicked,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child:Icon(icon,color:color,size: 30,),
                ),
                SizedBox(
                  width:20,
                ),
                Expanded(
                  child: Text(text,style: TextStyle(color:color,fontSize: 20,),),
                ),

                Icon(Icons.arrow_forward_ios,color: color)

              ],
            ),
          ),

        )

      ],
    );
  }

  void selectedItem(BuildContext context, int index){
    switch(index){
      case 0:
        // navigator.of(context).push   go to page?
        break;
      case 1:
      // navigator.of(context).push   go to page?
        break;
      case 2:
      // navigator.of(context).push   go to page?
        break;
      case 3:
      // navigator.of(context).push   go to page?
        break;
      case 4:
      // navigator.of(context).push   go to page?
        break;

    }
  }
}
