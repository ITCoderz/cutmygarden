import 'package:cut_my_garden/utils/alignment/widget_alignment.dart';
import 'package:cut_my_garden/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../models/review_model.dart';
import '../../../reusable_widgets/background_container_widgets/custom_widget_background.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/text_styles/text_styles.dart';

class ReviewCommentWidget extends StatelessWidget {
  final CommentModel commentModel;

  const ReviewCommentWidget({
    super.key,
    required this.commentModel,
  });

  @override
  Widget build(BuildContext context) {
    return CustomWidgetBackground(
      alignment: Alignment.center,
      widget: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  commentModel.reviewerName,
                  style: CCustomTextStyles.black410,
                ).alignWidget(
                  alignment: Alignment.centerLeft,
                ),
                const Spacer(),
                FittedBox(
                  child: Text(
                    commentModel.date,
                    style: CCustomTextStyles.black409,
                  ),
                ),
                5.pw,
                FittedBox(
                  child: Text(
                    commentModel.time,
                    style: CCustomTextStyles.black409,
                  ),
                ),
              ],
            ),
            10.ph,
            Expanded(
              child: Text(
                commentModel.comment,
                textAlign: TextAlign.justify,
                style: CCustomTextStyles.black412,
              ),
            ),
            10.ph,
            RatingBar(
              initialRating: commentModel.rating,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star_sharp,
                  color: CColors.yellowAccentTwo,
                ),
                half: const Icon(
                  Icons.star_half_sharp,
                  color: CColors.yellowAccentTwo,
                ),
                empty: const Icon(
                  Icons.star_border_sharp,
                  color: CColors.yellowAccentTwo,
                ),
              ),
              onRatingUpdate: (rating) {},
            ),
          ],
        ),
      ),
    );
  }
}
