
import 'package:flutter/material.dart';
import 'package:task/component/color.dart';
import 'package:task/model/items_model.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 810.0,
      child: GridView.count(
        crossAxisCount: 2,
        physics: const BouncingScrollPhysics(),
        childAspectRatio: 1.0 / 1.62,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        scrollDirection: Axis.vertical,
        children: [
          for(int i = 0; i < itemsList.length; ++i)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 170.0,
                width: 230.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3.0,
                      spreadRadius: 0.5,
                      offset: Offset(0.0, 3.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SizedBox(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                itemsList[i].image,
                                height: 150,
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                            right: 3.0,
                            top: 3.0,
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35.0),
                              ),
                              child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,
                                color: Colors.grey,
                                size: 15.0,)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(itemsList[i].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13.0, color: baseColor,),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text('SAR ',
                              style: TextStyle(fontSize: 14.0, color: baseColor, fontWeight: FontWeight.bold,),),
                            Text(itemsList[i].price,
                              style: TextStyle(fontSize: 14.0, color: baseColor, fontWeight: FontWeight.bold,),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
