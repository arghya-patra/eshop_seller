import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/profile_screen/edit_profile_screen.dart';
import 'package:eshop_seller/views/shop_screen/shop_setting_screen.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: "Settings", size: 16.0),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => EditProfileScreen());
              },
              icon: const Icon(
                Icons.edit,
                color: white,
              )),
          TextButton(
            onPressed: () {},
            child: normalText(
              text: "Logout",
              size: 16.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(imgProduct)
                  .box
                  .roundedFull
                  .clip(Clip.antiAlias)
                  .make(),
              title: boldText(text: "Vendor name"),
              subtitle: normalText(text: "Vendormail@gmail.com"),
            ),
            const Divider(),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                  children: List.generate(
                      profileButtonTiles.length,
                      (index) => ListTile(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Get.to(() => ShopSettings());
                                  break;
                              }
                            },
                            leading: Icon(
                              profileButtonIcons[index],
                              color: white,
                            ),
                            title: normalText(text: profileButtonTiles[index]),
                          ))),
            )
          ],
        ),
      ),
    );
  }
}
