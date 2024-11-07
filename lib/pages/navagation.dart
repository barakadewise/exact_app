import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home_page.dart'; // Import the earlier HomePage with TabView

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0; // Tracks the current selected tab
  final PageController _pageController = PageController(initialPage: 0);
  final ScrollController _scrollController = ScrollController();

  bool _isBottomBarVisible = true; // Controls visibility of BottomNavigationBar

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_isBottomBarVisible) {
        setState(() {
          _isBottomBarVisible = false;
        });
      }
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (!_isBottomBarVisible) {
        setState(() {
          _isBottomBarVisible = true;
        });
      }
    }
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          HomePage(scrollController: _scrollController),
          const CategoriesPage(),
          const EmployersPage(),
          const PostJobPage(),
        ],
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: _isBottomBarVisible ? kBottomNavigationBarHeight : 0.0,
        child: Wrap(
          children: [
            BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onTap,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Employers',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.post_add),
                  label: 'Post Job',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Categories Page',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class EmployersPage extends StatelessWidget {
  const EmployersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Employers Page',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class PostJobPage extends StatelessWidget {
  const PostJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Post Job Page',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
