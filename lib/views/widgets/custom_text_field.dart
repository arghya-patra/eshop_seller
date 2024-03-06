import 'package:eshop_seller/views/widgets/normal_text.dart';

import '../../const/const.dart';

Widget customTextField({label, hint, controller, isdesc = false}) {
  return TextFormField(
    maxLines: isdesc ? 4 : 1,
    decoration: InputDecoration(
      isDense: true,
      hintText: hint,
      hintStyle: TextStyle(color: lightGrey),
      label: normalText(text: label),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: white)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: white)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: white)),
    ),
  );
}
