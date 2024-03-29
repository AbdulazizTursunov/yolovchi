import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/data/storage_repository/storage_repository.dart';
import 'package:untitled2/ui/app_routes.dart';
import 'package:untitled2/ui/onboarding/widgets/page_view_icon_index.dart';
import 'package:untitled2/ui/onboarding/widgets/page_view_items.dart';
import 'package:untitled2/utils/get_theme.dart';

import '../view.dart';
import '../widgets/global_button.dart';

class CarouselPages extends StatefulWidget {
  const CarouselPages({super.key});

  @override
  State<CarouselPages> createState() => _CarouselPagesState();
}

class _CarouselPagesState extends State<CarouselPages> {
  int pageIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness:
          getTheme(context) ? Brightness.dark : Brightness.light,
          statusBarIconBrightness:
          getTheme(context) ? Brightness.light : Brightness.dark,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 20 / 428,
              vertical: height * 15 / 926,
            ),
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.all(2.r)),
              onPressed: () {
                StorageRepository.deleteBool("isFirst");
              },
              child: Text(
                "O'tkazib yuborish",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  onPageChanged: (index) {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  controller: pageController,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PageViewItems(
                      title:
                      "Biz siz uchun professional taksi xizmatlarini taqdim etamiz",
                      img: 'asset/svg/greenish/onboarding_car.svg'
                    ),
                    PageViewItems(
                      title:
                      "Sizning mamnunligingiz bizning birinchi raqamli ustuvorligimizdir",
                      img: 'asset/svg/greenish/onboarding_boy.svg'
                    ),
                    PageViewItems(
                      title:
                      "Keling, hozir Dastyor Taxi bilan kuningizni ajoyib o'tkazaylik!",
                      img: 'asset/svg/greenish/onboarding_girl.svg'
                    ),
                  ],
                ),
                SizedBox(height: height / 36),
                Positioned(
                  bottom: 60 * height / 926,
                  child: PageIndexItem(activePageIndex: pageIndex),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: width / 12,
              left: width / 12,
              bottom: width / 25,
            ),
            child: Column(
              children: [
                pageIndex != 2
                    ? GlobalButton(
                    color: const Color(0xFFFEBB1B),
                    title: "Keyingisi",
                    radius: 100,
                    textColor: Colors.black,
                    onTap: () {
                      if (pageIndex < 2) {
                        pageIndex++;
                        setState(() {
                          pageController.animateToPage(
                            pageIndex,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear,
                          );
                        });
                      }
                    })
                    : GlobalButton(
                    color: const Color(0xFFFEBB1B),
                    title: "Boshlash",
                    radius: 100,
                    textColor: Colors.black,
                    onTap: () async {
                      await StorageRepository.putBool("isFirst", true);
                      if (context.mounted) {
                        Navigator.pushReplacementNamed(
                          context,
                          RouteNames.letsIn,
                        );
                      }
                    }),
                SizedBox(height: height * 20 / 926),
              ],
            ),
          )
        ],
      ),
    );
  }
}