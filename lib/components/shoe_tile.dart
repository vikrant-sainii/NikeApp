import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key,required this.shoe,required this.onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 270,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath,width: 260,height: 300,),
          ),

          //decription
          Text(shoe.description,style: TextStyle(color: Colors.grey[600]),),

          //price + details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // shoename
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //name
                  Text('\t\t\t${shoe.name}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  //price
                  Text('\t\t\t${shoe.price}'),
                ],
              ),

              //plus button
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                    ),
                  ),
                  child: Icon(Icons.add,color: Colors.white,size: 20,),
                ),
              )
            ],
          )

          //button to add to card
        ],
      ),
    );
  }
}
