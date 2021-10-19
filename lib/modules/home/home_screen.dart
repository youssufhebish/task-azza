import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/component/color.dart';
import 'package:task/component/widget/custom_text_field.dart';
import 'package:task/model/category_model.dart';

import 'components/home_grid_view.dart';
import 'components/post_list.dart';


class HomeScreen extends StatelessWidget {


  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController homeController = PageController();
    ScrollController scrollController = ScrollController();
    List<Widget> list= [
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                  image: AssetImage('assets/images/photo.jpg'),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                  image: AssetImage('assets/images/photo.jpg'),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                  image: AssetImage('assets/images/photo.jpg'),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                  image: AssetImage('assets/images/photo.jpg'),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Image.asset('assets/images/icon.png',
            height: 40.0,),
        ),
        title: customTextFieldWithoutPrefix(text: 'ابحث هنا',
          suffix: Icon(Icons.search, color: baseColor,),),
        actions: [
          Stack(
            children: [
              Center(child: Icon(Icons.notifications_none_outlined, color: baseColor,
              size: 30.0,),),
              Positioned(
                top: 10,
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: secondColor,
                  child: const Text('1', style: TextStyle(color: Colors.white, fontSize: 10.0),),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(

        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 200.0,
                child: PageView.builder(
                    itemBuilder: (context, index) => list[index],
                itemCount: list.length,
                controller: homeController,),
              ),
              const SizedBox(height: 10.0,),
              SmoothPageIndicator(
                controller: homeController,
                count: list.length,
                effect: WormEffect(
                    dotHeight: 3.0,
                    dotWidth: 15.0,
                    activeDotColor: baseColor,
                    dotColor: Colors.grey),
              ),
              const SizedBox(height: 10.0,),
              Row(
                children: [
                  Text('الأقسام',
                  style: TextStyle(color: baseColor),),
                  const Spacer(),
                  Text('عرض الكل',
                  style: TextStyle(color: secondColor,),)
                ],
              ),
              SizedBox(
                height: 160.0,
                child: ListView.builder(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 150.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(categoriesList[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 150.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: baseColor.withOpacity(0.3),
                          ),
                          child: Center(child: Text(
                            categoriesList[index].title,
                            style: const TextStyle(color: Colors.white, fontSize: 20.0,),
                          )),
                        ),
                      ],
                    ),
                  ),
                  itemCount: categoriesList.length,
                ),
              ),
              Row(
                children: [
                  Text('أحدث الإعلانات',
                    style: TextStyle(color: baseColor),),
                  const Spacer(),
                ],
              ),
              const HomeGridView(),
              Row(
                children: [
                  Text('أحدث المقالات',
                    style: TextStyle(color: baseColor),),
                  const Spacer(),
                  Text('عرض الكل',
                    style: TextStyle(color: secondColor,),)
                ],
              ),
              const PostListView(),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(child: Text(
                  'جميع الحقوق محفوظة © وساطة عقارية 2021',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                )),
              ),
              const SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.account_circle_rounded, title: 'حسابي'),
          TabItem(icon: Icons.nearby_off_outlined, title: 'مجاور لك'),
          TabItem(
              icon: Icons.home_outlined,),
          TabItem(icon: Icons.category, title: 'الأقسام'),
          TabItem(icon: Icons.more_horiz_outlined, title: 'المزيد'),
        ],
        backgroundColor: Colors.white,
        activeColor: secondColor,
        style: TabStyle.fixed,
        color: baseColor,
        initialActiveIndex: 2, //optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
