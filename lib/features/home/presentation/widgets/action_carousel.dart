import 'package:design_sunday/features/home/presentation/widgets/action_card.dart';
import 'package:flutter/material.dart';

class ActionCarousel extends StatefulWidget {
  
  const ActionCarousel({super.key});

  @override
  State<StatefulWidget> createState() {
    return ActionCarouselState();
  }

}

class ActionCarouselState extends State<ActionCarousel> {

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.9, initialPage: _currentIndex);
  }

  void updateCarouselIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Color activeColor(int index) {
    return _currentIndex == index ? Colors.greenAccent : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 130,
          child: PageView(
            padEnds: false,
            controller: _pageController,
            onPageChanged: (index) {
              updateCarouselIndex(index);
            },
            children: const [
              ActionCard(
                title: 'My Plan', 
                completed: 4,
                percentage: 65,
              ),
              ActionCard(
                title: 'Swimming', 
                completed: 8,
                percentage: 70,
              ),
              ActionCard(
                title: 'Running', 
                completed: 2,
                percentage: 65,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(6),
                color: activeColor(0),
              ),
            ),
            const SizedBox(width: 4,),
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(6),
                color: activeColor(1),
              ),
            ),
            const SizedBox(width: 4,),
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(6),
                color: activeColor(2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}