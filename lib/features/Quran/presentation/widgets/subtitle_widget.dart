import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_svg.dart';
import 'circle_widget.dart';
import 'trailing_widget.dart';

class SubTitelWidget extends StatelessWidget {
  final String surahName;
  final String revelationType;
  final int manyAyah;
  const SubTitelWidget({
    super.key,
    required this.manyAyah,
    required this.revelationType,
    required this.surahName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleWidget(
              text: revelationType,
              svgImage: AssetsSvg.ka3ba,
            ),
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            CircleWidget(
              text: '$manyAyah ${AppLocalizations.of(context)!.ayat} ',
              svgImage: AssetsSvg.smallBook,
            ),
          ],
        ),
        TrailingWidget(suraName: surahName),
      ],
    );
  }
}
