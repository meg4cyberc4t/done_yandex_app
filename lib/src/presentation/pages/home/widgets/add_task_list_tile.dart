import 'package:done_yandex_app/src/di/global_dependency.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:flutter/material.dart';

class AddTaskListTile extends StatefulWidget {
  const AddTaskListTile({Key? key}) : super(key: key);

  @override
  State<AddTaskListTile> createState() => _AddTaskListTileState();
}

class _AddTaskListTileState extends State<AddTaskListTile> {
  late final TextEditingController textEditingController;

  void addNewTask() {
    if (textEditingController.text.trim().isEmpty) return;
    context.global.tasksBloc
        .add(AddTaskEvent(text: textEditingController.text.trim()));
    textEditingController.clear();
  }

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.bodyText2,
      controller: textEditingController,
      onSubmitted: (_) => addNewTask(),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          prefixIcon: const SizedBox.shrink(),
          border: InputBorder.none,
          hintText: context.l10n.newTask,
          contentPadding: const EdgeInsets.symmetric(vertical: 14)),
    );
  }
}
