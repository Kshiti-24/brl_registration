import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isShrunk = false;
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    // Add a listener to the scroll controller to detect scroll events
    controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    // Remove the listener when the widget is disposed to avoid memory leaks
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          _scrollListener();
          return true;
        },
        child: CustomScrollView(
          controller: controller,
          slivers: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 200,
              // height: _isShrunk ? 50.0 : 200.0,
              // child: AppBar(
              //   // toolbarHeight: 20,
              //   title: Text('My App'),
              //   // Center the title on the app bar
              //   centerTitle: true,
              //   // Add a leading icon button to the app bar
              //   leading: IconButton(
              //     icon: Icon(Icons.menu),
              //     onPressed: () {},
              //   ),
              // ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _scrollListener() {
    if (_isShrunk != (controller.offset > 50)) {
      setState(() {
        _isShrunk = controller.offset > 50;
      });
    }
  }
}


class AnimatedAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final String title;

  AnimatedAppBar({required this.height, required this.title});

  @override
  _AnimatedAppBarState createState() => _AnimatedAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _AnimatedAppBarState extends State<AnimatedAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: AppBar(
            title: Text(widget.title),
            backgroundColor: Colors.blue,
            elevation: 0,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
