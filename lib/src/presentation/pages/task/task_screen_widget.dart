import 'package:done_yandex_app/src/data/enums/task_impotance_enum.dart';
import 'package:done_yandex_app/src/data/models/task_model.dart';
import 'package:done_yandex_app/src/di/get_it_instance.dart';
import 'package:done_yandex_app/src/l10n/localization_extension.dart';
import 'package:done_yandex_app/src/presentation/pages/home/bloc/tasks_bloc.dart';
import 'package:done_yandex_app/src/presentation/pages/task/widgets/change_impotance_button.dart';
import 'package:done_yandex_app/src/presentation/pages/task/widgets/delete_task_button.dart';
import 'package:done_yandex_app/src/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskScreenWidget extends StatefulWidget {
  const TaskScreenWidget({required this.task, Key? key}) : super(key: key);
  final TaskModel? task;

  @override
  State<TaskScreenWidget> createState() => _TaskScreenWidgetState();
}

class _TaskScreenWidgetState extends State<TaskScreenWidget> {
  void _onSaveButton() {
    if (textEditingController.text.trim().isEmpty) return;
    if (widget.task == null) {
      getIt.tasksBloc.add(
        AddTaskEvent(
          text: textEditingController.text.trim(),
          deadline: selectedDeadline,
          done: widget.task?.done ?? false,
          importance: selectedTaskImpotance,
        ),
      );
    } else {
      getIt.tasksBloc.add(
        EditTaskEvent(
          id: widget.task!.id,
          text: textEditingController.text.trim(),
          deadline: selectedDeadline,
          done: widget.task?.done ?? false,
          importance: selectedTaskImpotance,
        ),
      );
    }
    getIt.navigation.pop();
  }

  void _onDeleteButton() {
    if (widget.task == null) return;
    getIt.tasksBloc.add(DeleteTaskEvent(id: widget.task!.id));
    getIt.navigation.pop();
  }

  @override
  void initState() {
    textEditingController = TextEditingController(text: widget.task?.text);
    selectedTaskImpotance = widget.task?.importance ?? TaskImportance.basic;
    selectedDeadline = widget.task?.deadline;
    super.initState();
  }

  late final TextEditingController textEditingController;
  late TaskImportance selectedTaskImpotance;
  late DateTime? selectedDeadline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            primary: true,
            foregroundColor: context.figma.labelPrimary,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: Navigator.of(context).pop,
            ),
            actions: [
              TextButton(
                onPressed: _onSaveButton,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    context.l10n.save.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: context.figma.blue),
                  ),
                ),
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
                  controller: textEditingController,
                  maxLines: null,
                  style: Theme.of(context).textTheme.bodyText2,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: context.l10n.taskHintText,
                    filled: true,
                    fillColor: context.figma.backSecondary,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ChangeImportanceButton(
              value: selectedTaskImpotance,
              onChanged: (newTaskImportance) {
                if (newTaskImportance == null) return;
                if (newTaskImportance == selectedTaskImpotance) return;
                setState(() => selectedTaskImpotance = newTaskImportance);
              },
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
                context.l10n.deadline,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: selectedDeadline == null
                  ? null
                  : Text(
                      DateFormat(
                        "d MMMM yyyy",
                        context.l10n.localeName,
                      ).format(selectedDeadline!),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: context.figma.blue),
                    ),
              value: selectedDeadline != null,
              onChanged: (final bool? value) async {
                if (value == null) return;
                if (!value) {
                  setState(() => selectedDeadline = null);
                  return;
                }
                final DateTime? dt = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365 * 10)),
                );
                if (dt == null) return;
                setState(() => selectedDeadline = dt);
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 32),
          ),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverToBoxAdapter(
            child: DeleteTaskButton(
              onPressed: _onDeleteButton,
              enabled: widget.task != null,
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
