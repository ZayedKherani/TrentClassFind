import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trent_u_class_find/universals/arguments.dart';

import 'package:trent_u_class_find/universals/variables.dart';

class TrentAppSettingsPage extends StatefulWidget {
  const TrentAppSettingsPage({super.key});

  @override
  State<TrentAppSettingsPage> createState() => _TrentAppSettingsPageState();
}

class _TrentAppSettingsPageState extends State<TrentAppSettingsPage> {
  ScrollController? settingsPageScrollController;

  @override
  void initState() {
    settingsPageScrollController = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    settingsPageScrollController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Scrollbar(
              controller: settingsPageScrollController!,
              interactive: true,
              trackVisibility: true,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(
                    10.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 80.0,
                        ),
                        Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ListTile(
                                leading: Icon(
                                  Icons.format_paint_rounded,
                                ),
                                title: Text(
                                  "App Theme",
                                ),
                              ),
                              RadioListTile.adaptive(
                                value: 0,
                                groupValue: appThemeSettingsInt,
                                onChanged: (
                                  int? value,
                                ) {
                                  setState(
                                    () {
                                      appThemeSettingsInt = value!;

                                      globalThemeModeNotifier!.setThemeMode(
                                        ThemeMode.light,
                                      );
                                    },
                                  );
                                },
                                title: const Text(
                                  "Light",
                                ),
                              ),
                              RadioListTile.adaptive(
                                value: 1,
                                groupValue: appThemeSettingsInt,
                                onChanged: (
                                  int? value,
                                ) {
                                  setState(
                                    () {
                                      appThemeSettingsInt = value!;

                                      globalThemeModeNotifier!.setThemeMode(
                                        ThemeMode.dark,
                                      );
                                    },
                                  );
                                },
                                title: const Text(
                                  "Dark",
                                ),
                              ),
                              RadioListTile.adaptive(
                                value: 2,
                                groupValue: appThemeSettingsInt,
                                onChanged: (
                                  int? value,
                                ) {
                                  setState(
                                    () {
                                      appThemeSettingsInt = value!;

                                      globalThemeModeNotifier!.setThemeMode(
                                        ThemeMode.system,
                                      );
                                    },
                                  );
                                },
                                title: const Text(
                                  "System Default",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ListTile(
                                leading: Icon(
                                  Icons.image_rounded,
                                ),
                                title: Text(
                                  "Image Quality",
                                ),
                              ),
                              RadioListTile.adaptive(
                                value: 0,
                                groupValue: appImageQualityViewSettingsInt,
                                onChanged: (
                                  int? value,
                                ) {
                                  setState(
                                    () {
                                      appImageQualityViewSettingsInt = value!;
                                    },
                                  );
                                },
                                title: const Text(
                                  "720p",
                                ),
                              ),
                              RadioListTile.adaptive(
                                value: 1,
                                groupValue: appImageQualityViewSettingsInt,
                                onChanged: (
                                  int? value,
                                ) {
                                  setState(
                                    () {
                                      appImageQualityViewSettingsInt = value!;
                                    },
                                  );
                                },
                                title: const Text(
                                  "1080p",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ListTile(
                                leading: Icon(
                                  Icons.image_rounded,
                                ),
                                title: Text(
                                  "Image Download Quality",
                                ),
                              ),
                              RadioListTile.adaptive(
                                value: 0,
                                groupValue: appImageQualityDownloadSettingsInt,
                                onChanged: (
                                  int? value,
                                ) {
                                  setState(
                                    () {
                                      appImageQualityDownloadSettingsInt =
                                          value!;
                                    },
                                  );
                                },
                                title: const Text(
                                  "720p",
                                ),
                              ),
                              RadioListTile.adaptive(
                                value: 1,
                                groupValue: appImageQualityDownloadSettingsInt,
                                onChanged: (
                                  int? value,
                                ) {
                                  setState(
                                    () {
                                      appImageQualityDownloadSettingsInt =
                                          value!;
                                    },
                                  );
                                },
                                title: const Text(
                                  "1080p",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          child: ListTile(
                            leading: Icon(
                              Icons.info_outline,
                              color: Theme.of(
                                context,
                              ).colorScheme.primary,
                            ),
                            title: Text(
                              "About",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                            ),
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (
                                  BuildContext? context,
                                ) =>
                                    AlertDialog(
                                  title: const Text(
                                    "Trent University Class Find",
                                  ),
                                  backgroundColor: Theme.of(
                                    context!,
                                  ).colorScheme.surface,
                                  content: const Text(
                                    "Version 0.4.6-alpha2",
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () async {
                                        await Navigator.pushNamed(
                                          context,
                                          '/settings/licenses',
                                          arguments:
                                              const TrentAppSettingsLicensePageArguments(
                                            applicationVersion: '0.4.6-alpha2',
                                            applicationLegalese:
                                                '© 2023 Zayed Kherani',
                                            applicationName:
                                                'Trent University Class Find',
                                            applicationIconAssetPath:
                                                'assets/icons/splash_icon.png',
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "View Trent Licenses",
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium!.copyWith(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                            ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(
                                          context,
                                        );
                                      },
                                      child: Text(
                                        "Close",
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium!.copyWith(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          child: ListTile(
                            leading: Icon(
                              Icons.delete,
                              color: Theme.of(
                                context,
                              ).colorScheme.error,
                            ),
                            title: Text(
                              "Reset All Shared Preferences",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.error,
                                  ),
                            ),
                            onTap: () async {
                              await showDialog(
                                context: context,
                                builder: (
                                  BuildContext? context,
                                ) =>
                                    AlertDialog(
                                  title: const Text(
                                    "Reset All Shared Preferences",
                                  ),
                                  content: const Text(
                                    "Are you sure you want to reset all stored settings?",
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(
                                          context!,
                                        );
                                      },
                                      child: const Text(
                                        "Cancel",
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        await SharedPreferences.getInstance()
                                            .then(
                                          (
                                            SharedPreferences? prefs,
                                          ) async {
                                            await prefs!.clear();
                                          },
                                        );

                                        if (context.mounted) {
                                          Navigator.pop(
                                            context,
                                          );

                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              margin: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              backgroundColor: Theme.of(
                                                context,
                                              ).colorScheme.surface,
                                              content: Text(
                                                "All shared preferences have been reset.",
                                                style: TextStyle(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.onSurface,
                                                ),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  12.0,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                      child: Text(
                                        "Reset",
                                        style: Theme.of(
                                          context!,
                                        ).textTheme.bodyMedium!.copyWith(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.error,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(
                                context,
                              ).size.height /
                              10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Hero(
              tag: 'AppBar',
              child: SizedBox(
                height: 70.0,
                child: Material(
                  color: Colors.transparent,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      color: const Color(
                        0x00000000,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            12.0,
                          ),
                        ),
                        child: Container(
                          height: 70.0,
                          width: double.infinity,
                          color: Theme.of(
                            context,
                          ).colorScheme.surface,
                          child: Stack(
                            children: [
                              const Center(
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'ZarBrush',
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back_rounded,
                                  ),
                                  onPressed: () => Navigator.pop(
                                    context,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
