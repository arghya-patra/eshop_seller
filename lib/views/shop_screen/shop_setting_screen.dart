import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/widgets/custom_text_field.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';
import 'package:flutter/material.dart';

class ShopSettings extends StatelessWidget {
  const ShopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: "Shop settings", size: 16.0),
        actions: [
          TextButton(
            onPressed: () {},
            child: normalText(
              text: "Save",
              size: 16.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextField(label: shopName, hint: nameHint),
            10.heightBox,
            customTextField(label: address, hint: shopAddressHint),
            10.heightBox,
            customTextField(
              label: mobile,
              hint: shopMobileHint,
            ),
            10.heightBox,
            customTextField(label: website, hint: shopWebsitehint),
            10.heightBox,
            customTextField(
                label: description, hint: shopDescHint, isdesc: true)
          ],
        ),
      ),
    );
  }
}
