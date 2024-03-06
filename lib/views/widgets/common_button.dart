import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';

Widget CommonButton({title, color = purpleColor, onPress}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
         backgroundColor: color,
          padding: EdgeInsets.all(12)),
      onPressed: onPress,
      child: boldText(text: title, size: 16.0));
}
