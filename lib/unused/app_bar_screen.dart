// import 'package:flutter/material.dart';
//
// class AppBarB extends StatefulWidget {
//   const AppBarB({super.key});
//
//   @override
//   State<AppBarB> createState() => _AppBarBState();
// }
//
// class _AppBarBState extends State<AppBarB> {
//   final _scrollController = ScrollController();
//   // bool _switch = true;
//   double _height = 0;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     _scrollController.addListener(() {
//       // print(_scrollController.offset);
//       if (_scrollController.offset > 180) {
//         setState(() {
//           // _switch = false;
//           _height = 80;
//         });
//       } else if (_scrollController.offset > 100) {
//         setState(() {
//           // _switch = false;
//           _height = (_scrollController.offset - 100);
//         });
//       } else {
//         setState(() {
//           // _switch = true;
//           _height = 0;
//         });
//       }
//     });
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: CustomScrollView(
//           controller: _scrollController,
//           slivers: [
//             SliverAppBar(
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//               pinned: true,
//               // expandedHeight: _height,
//               floating: true,
//               // backgroundColor: Colors.amber,
//               title: Image.asset('asset/ghj.jpg', fit: BoxFit.fitWidth),
//               centerTitle: true,
//               titleSpacing: 0,
//
//               // bottom: PreferredSize(
//               //   preferredSize: Size.fromHeight(-50),
//               //   child: SizedBox(),
//               // ),
//               // flexibleSpace: const FlexibleSpaceBar(
//               //   collapseMode: CollapseMode.parallax,
//               // ),
//               collapsedHeight: _height,
//               toolbarHeight: _height,
//             ),
//             SliverAppBar(
//               collapsedHeight: 0,
//               toolbarHeight: 0,
//               expandedHeight: 120,
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//               pinned: false,
//               centerTitle: false,
//               flexibleSpace: FlexibleSpaceBar(
//                 collapseMode: CollapseMode.parallax,
//                 background: Image.asset('asset/rm23.jpg', fit: BoxFit.cover),
//               ),
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) => ListTile(
//                   title: Text('Item $index'),
//                 ),
//                 childCount: 30,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // class SearchBar extends StatelessWidget {
// //   const SearchBar({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Text("Heyy");
// //   }
// // }
