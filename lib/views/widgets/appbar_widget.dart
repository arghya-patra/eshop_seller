import 'package:eshop_seller/const/const.dart';
import 'package:intl/intl.dart' as intl;

import 'package:eshop_seller/views/widgets/normal_text.dart';

AppBar appBarWidget(title) {
  return AppBar(
    backgroundColor: white,
    automaticallyImplyLeading: false,
    title: boldText(
      text: title,
      color: darkGrey,
      size: 16.0,
    ),
    actions: [
      normalText(
          text: intl.DateFormat('EEE, MMM d, ' 'yy').format(DateTime.now()),
          color: purpleColor),
      10.widthBox,
    ],
  );
}
