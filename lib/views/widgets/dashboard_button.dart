import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';

Widget dashBoardButton(context, {title, count, icon}) {
  var size = MediaQuery.of(context).size;
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            boldText(text: title, size: 16.0),
            boldText(text: count, size: 16.0),
          ],
        ),
      ),
      Image.asset(
        icon,
        width: 40,
        color: white,
      ),
    ],
  )
      .box
      .color(purpleColor)
      .rounded
      .size(size.width * 0.4, 80)
      .padding(EdgeInsets.all(8))
      .make();
}
