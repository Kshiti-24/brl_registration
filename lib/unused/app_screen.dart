// import 'package:flutter/material.dart';
//
// class AppBarScreen extends StatefulWidget {
//   const AppBarScreen({super.key});
//
//   @override
//   State<AppBarScreen> createState() => _AppBarScreenState();
// }
//
// class _AppBarScreenState extends State<AppBarScreen> {
//   bool _pinned = true;
//   bool _snap = false;
//   bool _floating = false;
//   bool offMind = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           offMind
//               ? SliverAppBar(
//                   pinned: _pinned,
//                   snap: _snap,
//                   floating: _floating,
//                   expandedHeight: 150.0,
//                   flexibleSpace: const FlexibleSpaceBar(
//                     title: Text('SliverAppBar'),
//                     background: FlutterLogo(),
//                   ),
//                 )
//               : SliverAppBar(
//                   pinned: _pinned,
//                   snap: _snap,
//                   floating: _floating,
//                   expandedHeight: 150.0,
//                   flexibleSpace: const FlexibleSpaceBar(
//                     title: Text('SliverAppBar'),
//                     background: FlutterLogo(),
//                   ),
//                 ),
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 40,
//               child: Center(
//                 child: Text('Scroll to see the SliverAppBar in effect.'),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Container(
//                   color: index.isOdd ? Colors.white : Colors.black12,
//                   height: 100.0,
//                   child: Center(
//                     child: Text('$index', textScaleFactor: 5),
//                   ),
//                 );
//               },
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: OverflowBar(
//             overflowAlignment: OverflowBarAlignment.center,
//             children: <Widget>[
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('pinned'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _pinned = val;
//                       });
//                     },
//                     value: _pinned,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('snap'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _snap = val;
//                         // Snapping only applies when the app bar is floating.
//                         _floating = _floating || _snap;
//                       });
//                     },
//                     value: _snap,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('floating'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _floating = val;
//                         _snap = _snap && _floating;
//                       });
//                     },
//                     value: _floating,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
