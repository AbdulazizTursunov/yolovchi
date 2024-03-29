import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled2/data/storage_repository/storage_repository.dart';
import 'package:untitled2/utils/colors/app_colors.dart';
import 'package:untitled2/utils/constants/constants.dart';
import 'package:untitled2/utils/constants/storage_keys.dart';
import 'package:untitled2/utils/icons/app_icons.dart';
import 'package:untitled2/utils/screen_size.dart';


class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 100 * width / figmaWidth,
            width: 100 * width / figmaWidth,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.c_50,
            ),
            child: Stack(
              children: [
                // StorageRepository.getString(StorageKeys.userRole) == AppConstants.driver
                //     ? BlocBuilder<DriverBloc, DriverState>(builder: (context, state) {
                //         return Center(
                //           child: state.driverModel.imageUrl.isEmpty
                //               ? Image.asset(
                //                   AppIcons.emptyProfile,
                //                   height: 100 * width / figmaWidth,
                //                 )
                //               : ClipRRect(
                //                   borderRadius: BorderRadius.circular(100.r),
                //                   child: Image.network(
                //                     height: 100 * width / figmaWidth,
                //                     width: 100 * width / figmaWidth,
                //                     state.driverModel.imageUrl,
                //                     fit: BoxFit.fill,
                //                   ),
                //                 ),
                //         );
                //       })
                //     : BlocBuilder<UserBloc, UsersState>(builder: (context, state) {
                //         return Center(
                //           child: state.userModel.image.isEmpty
                //               ? Image.asset(
                //                   AppIcons.emptyProfile,
                //                   height: 100 * width / figmaWidth,
                //                 )
                //               : ClipRRect(
                //                   borderRadius: BorderRadius.circular(100.r),
                //                   child: Image.network(
                //                     height: 100 * width / figmaWidth,
                //                     width: 100 * width / figmaWidth,
                //                     state.userModel.image,
                //                     fit: BoxFit.fill,
                //                   ),
                //                 ),
                //         );
                //       }),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    AppIcons.getSvg(
                      name: AppIcons.editSquare,
                      iconType: IconType.bold,
                    ),
                    width: 24.w,
                    colorFilter: const ColorFilter.mode(
                      AppColors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
