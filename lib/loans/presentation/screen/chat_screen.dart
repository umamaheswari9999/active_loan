import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widget/empty_list_widget.dart';
import '../../../shared/widget/failure_widget.dart';
import '../../../shared/widget/loading_list_widget.dart';
import '../bloc/add_note/add_note_cubit.dart';
import '../bloc/notes/notes_cubit.dart';
import '../widget/chat_bottom_bar.dart';
import '../widget/chat_item_widget.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
    required this.loanNumber,
    required this.loanId,
  }) : super(key: key);

  final String loanNumber;
  final String loanId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(FeatherIcons.arrowLeftCircle),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0.5,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Support'.toUpperCase(),
                style: Theme.of(context).textTheme.caption),
            Text(loanNumber)
          ],
        ),
        centerTitle: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: MultiBlocListener(
              listeners: [
                BlocListener<AddNoteCubit, AddNoteState>(
                  listener: (ctx, state) {
                    state.maybeWhen(
                      failure: (f) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Could not add note')));
                      },
                      success: (_) {
                        _fetchInitialNotes(context);
                      },
                      orElse: () {},
                    );
                  },
                ),
              ],
              child: BlocBuilder<NotesCubit, NotesState>(
                builder: (ctx, state) {
                  return state.when(
                    initial: () => const LoadingListWidget(),
                    loading: () => const LoadingListWidget(),
                    success: (notes, hasReachedMax) {
                      if (notes.isEmpty) {
                        return Center(
                          child: EmptyListWidget(
                            graphicPath: 'assets/icons/no_data.svg',
                            message:
                                'No notes found for this loan. Start typing to add some notes.',
                            onRefresh: () {
                              _fetchInitialNotes(context);
                            },
                          ),
                        );
                      }

                      return ListView.separated(
                        reverse: true,
                        itemCount: notes.length,
                        padding: const EdgeInsets.all(12.0),
                        separatorBuilder: (ctx, idx) => const SizedBox(height: 6),
                        itemBuilder: (ctx, idx) => ChatItemWidget(note: notes[idx]),
                      );
                    },
                    failure: (f) => Center(
                      child: FailureWidget(
                        failure: f,
                        onRefresh: () => _fetchInitialNotes(context),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Divider(),
          ChatBottomBar(loanId: loanId),
        ],
      ),
    );
  }

  void _fetchInitialNotes(BuildContext context) {
    BlocProvider.of<NotesCubit>(context).fetchInitial(loanId);
  }
}
