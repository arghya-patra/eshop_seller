import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/views/widgets/appbar_widget.dart';
import 'package:eshop_seller/views/widgets/dashboard_button.dart';
import 'package:eshop_seller/views/widgets/normal_text.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Dashboard"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashBoardButton(context,
                    title: "Products", count: 60, icon: icProducts),
                dashBoardButton(context,
                    title: "Orders", count: 60, icon: icOrders),
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashBoardButton(context,
                    title: "Ratings", count: 60, icon: icStar),
                dashBoardButton(context,
                    title: "Total Sales", count: 60, icon: icOrders),
              ],
            ),
            10.heightBox,
            Divider(),
            10.heightBox,
            boldText(text: popular, color: darkGrey, size: 16.0),
            20.heightBox,
            ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                    3,
                    (index) => ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            imgProduct,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          title:
                              boldText(text: "Product title", color: fontGrey),
                          subtitle: normalText(text: "\$40.0", color: darkGrey),
                        )))
          ],
        ),
      ),
    );
  }
}
