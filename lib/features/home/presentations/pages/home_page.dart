import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:policy_plus/core/components/custom_button.dart';
import 'package:policy_plus/core/components/grid_layout.dart';
import 'package:policy_plus/core/helper_class/size_config.dart';
import 'package:policy_plus/core/helper_class/spacing_helper.dart';
import 'package:policy_plus/features/home/presentations/widgets/adv_card_painter.dart';
import 'package:policy_plus/features/home/presentations/widgets/banner_custom_painter.dart';
import 'package:policy_plus/features/home/presentations/widgets/card_custom_painter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<ImageAndIconModel> list = [];
    final List<String> title = [
      'Health\nInsurance',
      'Car\nInsurance',
      'Travel\nInsurance',
      'Two Wheeler\nInsurance',
      'Term Life\nInsurance',
      'Family\nInsurance',
      'Investment\nPlans',
      'Employee\nPlans'
    ];

    final List<Widget> image = [
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
      Image.asset(
        'assets/home/car_insurance.png',
        scale: SizeConfig.blockSizeHorizontal! * 0.5,
      ),
    ];
    for (int i = 0; i < title.length; i++) {
      list.add(ImageAndIconModel(image: image[i], title: title[i]));
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hello, ",
                  style: SizeHelper.textStyleHelper(
                      type: Spacing.large, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Pavan👋",
                  style: SizeHelper.textStyleHelper(
                      type: Spacing.large, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text(
              "Welcome back.",
              style: SizeHelper.textStyleHelper(
                  colors: Colors.black54,
                  type: Spacing.xMedium,
                  fontWeight: FontWeight.w400),
            ),
            Stack(
              children: [
                CustomPaint(
                  size: Size(SizeConfig.screenWidth!, 250),
                  painter: BannerCustomPainter(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal! * 7),
                  child: Container(
                    height: 224,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.blockSizeHorizontal!)),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.blockSizeHorizontal! * 2,
                              top: SizeConfig.blockSizeHorizontal!,
                              bottom: SizeConfig.blockSizeHorizontal!,
                              right: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            child: Text(
                              "Investment Plans",
                              style: SizeHelper.textStyleHelper(
                                  colors: Colors.white,
                                  type: Spacing.xMedium,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        SizeHelper.vSpacing(vSpace: Spacing.xSmall),
                        Text(
                          "Become a \nCrorepati",
                          style: SizeHelper.textStyleHelper(
                              colors: Colors.white,
                              type: Spacing.xxLarge,
                              fontWeight: FontWeight.w500),
                        ),
                        SizeHelper.vSpacing(vSpace: Spacing.small),
                        Text(
                          "By investing ₹10,000/month* ",
                          style: SizeHelper.textStyleHelper(
                              colors: Colors.white,
                              type: Spacing.medium,
                              fontWeight: FontWeight.w400),
                        ),
                        SizeHelper.vSpacing(vSpace: Spacing.xSmall),
                        CustomButtonWidget(
                            textSize: Spacing.medium,
                            backgroundColor: Colors.white,
                            height: SizeConfig.screenHeight! * 0.04,
                            width: SizeConfig.screenWidth! * 0.27,
                            textColor: Theme.of(context).colorScheme.primary,
                            text: 'View Plans',
                            callback: () {
                              // context.go('/home');
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Categories",
              style: SizeHelper.textStyleHelper(
                  colors: Colors.black,
                  type: Spacing.xMedium,
                  fontWeight: FontWeight.w600),
            ),
            GridWidget(list: list),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonWidget(
                    textSize: Spacing.medium,
                    backgroundColor: Colors.white,
                    height: SizeConfig.screenHeight! * 0.04,
                    width: SizeConfig.screenWidth! * 0.27,
                    textColor: Theme.of(context).colorScheme.primary,
                    text: 'View all Plans',
                    isBorder: true,
                    callback: () {
                      // context.go('/home');
                    }),
              ],
            ),
            Text(
              "Why PolicyPlus?",
              style: SizeHelper.textStyleHelper(
                  colors: Colors.black,
                  type: Spacing.xMedium,
                  fontWeight: FontWeight.w600),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const[
                   PolicyCardWidget(
                      imgTitle: "🤩",
                      title: "Best Price",
                      subTitle: "for all insurance\nplans available\nonline"),
                   PolicyCardWidget(
                      imgTitle: "🙌🏻",
                      title: "Claims",
                      subTitle:
                          "support built in\nwith every policy\nfor help."),
                   PolicyCardWidget(
                      imgTitle: "💼",
                      title: "50+ Insurers",
                      subTitle: "partnered with\nus so that you\ncan compare."),
                ],
              ),
            ),
            Text(
              "Popular Plus",
              style: SizeHelper.textStyleHelper(
                  colors: Colors.black,
                  type: Spacing.xMedium,
                  fontWeight: FontWeight.w600),
            ),
            CustomPaint(
    size: Size(349, 120),
    painter: ADVCustomPainter(),
)

          ],
        ),
      ),
    );
  }
}

class PolicyCardWidget extends StatelessWidget {
  final String imgTitle;
  final String title;
  final String subTitle;
  const PolicyCardWidget({
    Key? key,
    required this.imgTitle,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          size: const Size(145, 173),
          painter: CardCustomPainter(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              imgTitle,
              textScaleFactor: 3,
            ),
            Text(
              title,
              style: SizeHelper.textStyleHelper(
                  colors: Colors.black,
                  type: Spacing.xMedium,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              subTitle,
              style: SizeHelper.textStyleHelper(
                  colors: Colors.black54,
                  type: Spacing.medium,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
