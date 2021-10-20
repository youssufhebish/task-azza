import 'package:flutter/material.dart';
import 'package:task/component/color.dart';
import 'package:task/model/posts_model.dart';

class PostListView extends StatelessWidget {
  const PostListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520.0,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            height: 250.0,
            width: double.infinity,
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
                            postsList[index].image,
                            height: 150,
                            width: double.infinity,
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
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                                size: 15.0,
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      postsList[index].title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: baseColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          'قراءة المزيد',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: secondColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        itemCount: postsList.length,
      ),
    );
  }
}
