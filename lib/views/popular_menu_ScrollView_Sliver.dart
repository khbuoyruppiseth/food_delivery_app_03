import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../components/restaurant_item_card.dart';
import '../components/search_and_filter_widget.dart';
import '../components/Menu_Widget.dart';

class PopularMenuPage_ScrollView_Sliver extends StatelessWidget {
  const PopularMenuPage_ScrollView_Sliver({Key? key}) : super(key: key);

  static const String routeName = '/popular_menu_ScrollView_Sliver';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Menu Restaurant ScrollView Sliver',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            floating: false,
            pinned: false,
            leadingWidth: 56,
            leading: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          _TopSearchCustomAppBar(),

          SliverPadding(
            padding: const EdgeInsets.only(
              left: 0,
              right: 0,
              bottom: 0,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return MenuWidget(picMenu: 'Menu1.png', nameMenu: 'Original Salad', resName: 'Lovy Food', price: "8");
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TopSearchCustomAppBar extends StatelessWidget {
  const _TopSearchCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _TopSearchCustomAppBarDelegate(
        minHeight: 120,
        maxHeight: 120,
        child: SearchAndFilterWidget(),
      ),
    );
  }
}

class _TopSearchCustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  _TopSearchCustomAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_TopSearchCustomAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
