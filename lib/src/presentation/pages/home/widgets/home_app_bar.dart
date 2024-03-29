import 'dart:math';

import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:flutter/material.dart';

class HomeAppBarDelegate extends SliverPersistentHeaderDelegate {
  const HomeAppBarDelegate({
    required this.doneTasksCount,
    required this.changeVisibility,
    required this.visibility,
  });
  final int doneTasksCount;
  final VoidCallback changeVisibility;
  final bool visibility;

  final double expandedElevation = 0;
  final double collapsedElevation = 8;

  final double statusBarHeight = 0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final offset = min(shrinkOffset, maxExtent - minExtent);
    final progress = offset / (maxExtent - minExtent);

    return Material(
      elevation: progress < 1 ? expandedElevation : collapsedElevation,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        duration: const Duration(milliseconds: 100),
        padding: const EdgeInsets.fromLTRB(
          16,
          0,
          16,
          8,
        ),
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.lerp(
                const EdgeInsets.symmetric(horizontal: 44),
                EdgeInsets.zero,
                progress,
              )!,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.l10n.myTasks,
                      style: TextStyle.lerp(
                        Theme.of(context).textTheme.headline5,
                        Theme.of(context).textTheme.headline6,
                        progress,
                      ),
                    ),
                    SizedBox(
                      height: (28 * (1 - progress)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: progress < 0.2 ? 1 : 0,
                          child: Text(
                            '${context.l10n.done} — $doneTasksCount',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: changeVisibility,
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    visibility ? Icons.visibility_off : Icons.visibility,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 184;

  @override
  double get minExtent => 85;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
