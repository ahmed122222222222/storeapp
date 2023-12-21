import 'package:appp/screen/uda.dart';
import 'package:flutter/material.dart';

import '../model/produc.dart';
class cCard extends StatelessWidget {
 cCard({super.key,required this. product});
 ProductModel product;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){Navigator.pushNamed(context,up.id );},
        child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(

            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius:  50,
                      color: Colors.grey.withOpacity(.1),
                      spreadRadius: 20,
                      offset: Offset(10,10)
                  )
                ]
            ),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title.substring(0,10)),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text( r'$' '${product.price.toString()}',style: const TextStyle(
                          fontSize: 16,
                        )),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 32,
              top: -60,
              child: Image.network (product.image,height: 100,width: 100,))
        ],
    ),
      );
  }
}