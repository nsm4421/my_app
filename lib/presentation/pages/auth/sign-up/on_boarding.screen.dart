import 'package:flutter/material.dart';
import 'package:my_app/presentation/pages/auth/sign-up/component/detail.fragment.dart';
import 'package:my_app/presentation/pages/auth/sign-up/component/nickname.fragment.dart';
import 'package:my_app/presentation/pages/auth/sign-up/component/on_board_submit.screen.dart';
import 'package:my_app/presentation/pages/auth/sign-up/component/on_boarding_layout.widget.dart';
import 'package:my_app/presentation/pages/auth/sign-up/component/profile_image.fragment.dart';
import 'package:my_app/presentation/pages/auth/sign-up/component/welcome.screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    final fragments = [
      const WelcomeFragment(),
      const NicknameFragment(),
      const ProfileImageFragment(),
      const DetailFragment(),
      const OnBoardSubmitScreen()
    ];
    _pages = fragments
        .asMap()
        .entries
        .map((e) => OnBoardingLayout(
              currentPage: e.key,
              pageController: _pageController,
              fragment: e.value,
              isFirstPage: e.key == 0,
              isLastPage: e.key == fragments.length - 1,
            ))
        .toList();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                  child: PageView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      pageSnapping: true,
                      itemCount: _pages.length,
                      controller: _pageController,
                      itemBuilder: (_, index) => _pages[index]))
            ],
          ),
        ),
      );
}