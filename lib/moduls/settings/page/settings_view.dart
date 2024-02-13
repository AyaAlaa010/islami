import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    List<String> languagesList = ["English", "عربي"];
    List<String> themesList = ["Light", "Dark"];
    return Padding(
      padding: EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            locale.language,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown(
            items: languagesList,
            initialItem: provider.currentLanguage == "en" ? "English" : "عربي",
            onChanged: (value) {
              if (value == "English") {
                provider.changeLanguage("en");
              } else if (value == "عربي") {
                provider.changeLanguage("ar");
              }
            },
            decoration: CustomDropdownDecoration(
                closedFillColor:
                    provider.isDark() ?  Color(0XFF141A2E) : Colors.white,
                expandedFillColor:
                    provider.isDark() ? Color(0XFF141A2E) : Colors.white,
                closedSuffixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  color: provider.isDark() ? Color(0XFFFACC1D) : Colors.black,
                ),
                expandedSuffixIcon: Icon(
                  Icons.keyboard_arrow_up,
                  color: provider.isDark() ? Color(0XFFFACC1D) : Colors.black,
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            locale.theme,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown(
            items: themesList,
            initialItem: provider.isDark() ? "Dark" : "Light",
            onChanged: (value) {
              if (value == "Light") {
                provider.changeThemeMode(ThemeMode.light);
              } else if (value == "Dark") {
                provider.changeThemeMode(ThemeMode.dark);
              }
            },
            decoration: CustomDropdownDecoration(
                closedFillColor:
                    provider.isDark() ? Color(0XFF141A2E) : Colors.white,
                expandedFillColor:
                    provider.isDark() ?  Color(0XFF141A2E) : Colors.white,
                closedSuffixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  color: provider.isDark() ? Color(0XFFFACC1D) : Colors.black,
                ),
                expandedSuffixIcon: Icon(
                  Icons.keyboard_arrow_up,
                  color: provider.isDark() ? Color(0XFFFACC1D) : Colors.black,
                )),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
