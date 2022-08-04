import 'package:done_yandex_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TaskScreenWidget extends StatefulWidget {
  const TaskScreenWidget({Key? key}) : super(key: key);

  @override
  State<TaskScreenWidget> createState() => _TaskScreenWidgetState();
}

class _TaskScreenWidgetState extends State<TaskScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            primary: true,
            foregroundColor: AppTheme.figmaOf(context).labelPrimary,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: Navigator.of(context).pop,
            ),
            actions: [
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Сохранить'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: AppTheme.figmaOf(context).blue),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(8),
                child: TextField(
                  minLines: 4,
                  maxLines: null,
                  style: Theme.of(context).textTheme.bodyText2,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: 'Что надо сделать...',
                    filled: true,
                    fillColor: AppTheme.figmaOf(context).backSecondary,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              tileColor: Colors.transparent,
              title: Text(
                'Важность',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: Text(
                'Нет',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: AppTheme.figmaOf(context).labelTertiary,
                    ),
              ),
              onTap: () {},
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              endIndent: 16,
              indent: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: SwitchListTile(
              title: Text(
                'Сделать до',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              tileColor: Colors.transparent,
              value: false,
              onChanged: (_) {},
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 32),
          ),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              tileColor: Colors.transparent,
              leading: const Icon(Icons.delete),
              minLeadingWidth: 0,
              title: Text(
                'Удалить',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
