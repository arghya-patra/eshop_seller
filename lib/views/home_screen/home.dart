import 'package:eshop_seller/const/const.dart';
import 'package:eshop_seller/controllers/home_controller.dart';
import 'package:eshop_seller/views/home_screen/home_screen.dart';
import 'package:eshop_seller/views/order_screen/order_screen.dart';
import 'package:eshop_seller/views/product_screen/product_screen.dart';
import 'package:eshop_seller/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navScreens = [
      const HomeScreen(),
      const ProductScreen(),
      const OrderScreen(),
      const ProfileScreen()
    ];
    var bottomNavBar = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProducts,
            color: darkGrey,
            width: 24,
          ),
          label: "Product"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icOrders,
            color: darkGrey,
            width: 24,
          ),
          label: "Orders"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icGeneralSettings,
            color: darkGrey,
            width: 24,
          ),
          label: "Settings")
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.navIndex.value,
          onTap: (index) {
            controller.navIndex.value = index;
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: purpleColor,
          unselectedItemColor: darkGrey,
          items: bottomNavBar,
        ),
      ),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: boldText(text: "Dashboard", color: darkGrey, size: 18.0),
      // ),
      body: Obx(
        () => Column(
          children: [
            Expanded(child: navScreens.elementAt(controller.navIndex.value))
          ],
        ),
      ),
    );
  }
}
