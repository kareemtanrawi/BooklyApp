import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Splash/presentation/view/widgets/best_seller_list_view.dart';
import '../../../../Splash/presentation/view/widgets/best_seller_list_view_item.dart';
import '../../../../Splash/presentation/view/widgets/custom_app_par.dart';
import '../../../../Splash/presentation/view/widgets/feaured_list_view.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppPar(),
            ),
            FeaturedBoxListView(),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Newset Books',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
