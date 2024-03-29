import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/utils/colors/app_colors.dart';

import '../../view.dart';

class PageIndexItem extends StatelessWidget {
  const PageIndexItem({
    super.key,
    required this.activePageIndex,
  });

  final int activePageIndex;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        activePageIndex == 0
            ? Container(
          height: 8.w,
          width: 32.w,
          decoration: BoxDecoration(
            color : AppColors.green,
            borderRadius: BorderRadius.circular(100),
          ),
        )
            : Container(
          height: 8.w,
          width: 8.w,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        SizedBox(width: width / 80),
        activePageIndex == 1
            ? Container(
          height: 8.w,
          width: 32.w,
          decoration: BoxDecoration(
            color: AppColors.green,
            borderRadius: BorderRadius.circular(100.r),
          ),
        )
            : Container(
          height: 8.w,
          width: 8.w,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(100.r),
          ),
        ),
        SizedBox(width: width / 80),
        activePageIndex == 2
            ? Container(
          height: 8.w,
          width: 32.w,
          decoration: BoxDecoration(
            color: AppColors.green,
            borderRadius: BorderRadius.circular(100.r),
          ),
        )
            : Container(
          height: 8.w,
          width: 8.w,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(100.r),
          ),
        ),
      ],
    );
  }
}
