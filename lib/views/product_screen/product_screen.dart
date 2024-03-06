import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/widgets/appbar_widget.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: const Icon(
          Icons.add,
          color: white,
        ),
      ),
      appBar: appBarWidget("Products"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                      20,
                      (index) => ListTile(
                            onTap: () {},
                            leading: Image.asset(
                              imgProduct,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            title: boldText(
                                text: "Product title", color: fontGrey),
                            subtitle:
                                normalText(text: "\$40.0", color: darkGrey),
                            trailing: VxPopupMenu(
                              arrowSize: 0.0,
                              menuBuilder: () => Column(
                                children: List.generate(
                                    popUpMenuIcons.length,
                                    (index) => Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Row(
                                            children: [
                                              Icon(popUpMenuIcons[index]),
                                              5.widthBox,
                                              normalText(
                                                  text: popUpMenuTiles[index],
                                                  color: darkGrey)
                                            ],
                                          ).onTap(() {}),
                                        )),
                              ).box.white.rounded.width(200).make(),
                              clickType: VxClickType.singleClick,
                              child: Icon(Icons.more_vert_rounded),
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
