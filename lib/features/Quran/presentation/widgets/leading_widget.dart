import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_svg.dart';
import '../../../Setting/presentation/cubit/Theme/theme_cubit.dart';

class LeadingWidget extends StatelessWidget {
  final int index;
  const LeadingWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          AssetsSvg.verse,
        ),
        Text(
          '${index + 1}',
          style: TextStyle(
            color: context.read<ThemeCubit>().state
                ? AppColors.white
                : AppColors.primary,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
