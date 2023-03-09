import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login_signup_page/login_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  int? tappedIndex;

  List<String> litems = [
    "Onboarding 1",
    "Onboarding 2",
    "Onboarding 3",
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
    tappedIndex = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: demo_data.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) => OnBoardContent(
                      image: demo_data[index].image,
                      title: demo_data[index].title,
                      description: demo_data[index].description,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        demo_data.length,
                            (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child:
                          DotIndicator(isActive: index == _pageIndex),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            /// (condition) ? true:false
                            _pageIndex == 2
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()),
                                  )
                                : _pageController.nextPage(
                                    curve: Curves.ease,
                                    duration:
                                        const Duration(microseconds: 300));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.deepPurpleAccent),
                          child: Image.asset(
                            "assets/images/right_arrow.png",
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(20.0),
      duration: const Duration(microseconds: 300),
      height: isActive ? 20 : 10,
      width: 4,
      decoration: BoxDecoration(
          color:
              isActive ? Colors.deepPurple : Colors.deepPurple.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/images/onboarding-1.png",
    title: "Find the items you've been looking for",
    description:
        "Here you'll see rich varieties of goods, carefully classified for seamless browsing experience",
  ),
  Onboard(
    image: "assets/images/onboarding-2.png",
    title: "Select multiple items at one time",
    description: "It provides you the functionality to have",
  ),
  Onboard(
    image: "assets/images/onboarding-3.png",
    title: "Complete your shopping by sitting anywhere in the world",
    description:
        "Do shopping from anyehere in the world and get your product at your doorstep",
  ),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
