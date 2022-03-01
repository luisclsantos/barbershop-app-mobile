import 'package:barbershops/app/shared/components/custom_bottombar_button.dart';
import 'package:barbershops/app/shared/components/custom_bottombar_iconbutton.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:barbershops/app/modules/navigation/navigation_store.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  final String title;
  final String? pageSelected;

  const NavigationPage({Key? key, this.title = 'Nav Bar', this.pageSelected})
      : super(key: key);
  @override
  NavigationPageState createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  final NavigationStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    if (widget.pageSelected != null) {
      store.selectedPathPage = '/navigation/${widget.pageSelected}/';
    }

    return Scaffold(
      body: RouterOutlet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Observer(
        builder: (_) {
          return FloatingActionButton.extended(
            backgroundColor: Colors.transparent,
            elevation: 0,
            disabledElevation: 0,
            focusElevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            onPressed: store.selectedPathPage == '/navigation/book/'
                ? () {}
                : () {
                    store.selectNavigation('/navigation/book/');
                  },
            label: SizedBox(
              width: getProportionateScreenWidth(140),
              child: Column(
                children: [
                  CustomBottomBarButton(
                    text: store.selectedPathPage == '/navigation/book/'
                        ? 'Confirmar'
                        : 'Agendar',
                    press: store.selectedPathPage == '/navigation/book/'
                        ? () {}
                        : () {
                            store.selectNavigation('/navigation/book/');
                          },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Observer(
          builder: (_) {
            return Row(
              children: <Widget>[
                CustomBottomBarIconButton(
                  icon: kNavigationBarIconAssetPathHome,
                  color: store.selectedPathPage == '/navigation/home/'
                      ? kPrimaryColor
                      : kSecondaryColor,
                  press: () {
                    store.selectNavigation('/navigation/home/');
                  },
                ),
                CustomBottomBarIconButton(
                  icon: kNavigationBarIconAssetPathSchedules,
                  color: store.selectedPathPage == '/navigation/schedule/'
                      ? kPrimaryColor
                      : kSecondaryColor,
                  press: () {
                    store.selectNavigation('/navigation/schedule/');
                  },
                ),
                const Spacer(),
                CustomBottomBarIconButton(
                  icon: kNavigationBarIconAssetPathLoyalty,
                  color: store.selectedPathPage == '/navigation/loyalty/'
                      ? kPrimaryColor
                      : kSecondaryColor,
                  press: () {
                    store.selectNavigation('/navigation/loyalty/');
                  },
                ),
                CustomBottomBarIconButton(
                  icon: kNavigationBarIconAssetPathProfile,
                  color: store.selectedPathPage == '/navigation/profile/'
                      ? kPrimaryColor
                      : kSecondaryColor,
                  press: () {
                    store.selectNavigation('/navigation/profile/');
                  },
                ),
              ],
            );
          },
        ),
        color: Colors.white,
        elevation: 5,
      ),
    );
  }
}
