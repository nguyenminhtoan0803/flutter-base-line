import 'package:demo/common/resources/ColorsCustom.dart';
import 'package:demo/controllers/theme/ThemesController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demo/shared/helpers/StringExtension.dart';

class UserTab extends StatelessWidget {
  UserTab({super.key});
  final ThemesController _themesController = Get.find();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 100.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: const EdgeInsets.symmetric(horizontal: 16),
                title: Text(
                  'Settings',
                  style: theme.textTheme.titleLarge,
                ),
              ),
            )
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Account",
                    style: theme.textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Get.isDarkMode
                            ? ColorsCustom.gray700
                            : Colors.grey.shade200),
                    child: Row(
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Get.isDarkMode
                                  ? ColorsCustom.gray500
                                  : Colors.grey.shade300),
                          child: Center(
                            child: Icon(
                              Icons.person,
                              size: 32,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Login / Register",
                          style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w400, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Settings",
                    style: theme.textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GetBuilder<ThemesController>(builder: (_) {
                    return _buildListTile('Appearance', Icons.dark_mode,
                        _.theme.toCapitalized(), Colors.purple, theme,
                        onTab: () => _showAppearanceModal(theme, _.theme));
                  }),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildListTile("Language", Icons.language, 'English',
                      Colors.orange, theme,
                      onTab: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildListTile("Notifications", Icons.notifications_outlined,
                      '', Colors.blue, theme,
                      onTab: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildListTile("Help", Icons.help, '', Colors.green, theme,
                      onTab: () {}),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildListTile("Logout", Icons.logout, '', Colors.red, theme,
                      onTab: () {}),
                ],
              ),
              Text(
                "Version 1.0.0",
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: Colors.grey.shade500),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(String title, IconData iconData, String trailing,
      Color color, ThemeData themeData,
      {onTab}) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withAlpha(30),
        ),
        child: Center(
          child: Icon(
            iconData,
            color: color,
          ),
        ),
      ),
      title: Text(
        title,
        style: themeData.textTheme.titleMedium,
      ),
      trailing: SizedBox(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              trailing,
              style: themeData.textTheme.bodyLarge
                  ?.copyWith(color: Colors.grey.shade600),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            )
          ],
        ),
      ),
      onTap: onTab,
    );
  }

  _showAppearanceModal(ThemeData theme, String current) {
    Get.bottomSheet(Container(
      padding: const EdgeInsets.all(16),
      height: 320,
      decoration: BoxDecoration(
          color: Get.isDarkMode ? Colors.grey.shade900 : Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select a theme",
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 32,
          ),
          ListTile(
            leading: const Icon(
              Icons.brightness_5,
              color: Colors.blue,
            ),
            title: Text(
              "light",
              style: theme.textTheme.bodyLarge,
            ),
            onTap: () {
              _themesController.setTheme('light');
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: current == 'light' ? Colors.blue : Colors.transparent,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            leading: const Icon(Icons.brightness_2, color: Colors.orange),
            title: Text(
              "Dark",
              style: theme.textTheme.bodyLarge,
            ),
            onTap: () {
              _themesController.setTheme('dark');
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: current == 'dark' ? Colors.orange : Colors.transparent,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListTile(
            leading: const Icon(
              Icons.brightness_6,
              color: Colors.blueGrey,
            ),
            title: Text(
              "System",
              style: theme.textTheme.bodyLarge,
            ),
            onTap: () {
              _themesController.setTheme("system");
              Get.back();
            },
            trailing: Icon(
              Icons.check,
              color: current == 'system' ? Colors.blueGrey : Colors.transparent,
            ),
          ),
        ],
      ),
    ));
  }
}
