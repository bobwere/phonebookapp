import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book_app/application/cubit/app_cubit.dart';
import 'package:phone_book_app/application/cubit/theme_cubit.dart';
import 'package:phone_book_app/application/state/app_state.dart';
import 'package:phone_book_app/presentation/view/add_edit_contact_page.dart';
import 'package:phone_book_app/shared/app_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phone Book App',
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(height: 10),
              AppInput(
                textEditingController: null,
                hint: 'Search for contact by name',
                onChanged: (searchTerm) {
                  context.read<AppCubit>().changeSearchTerm(searchTerm);
                },
              ),
              const SizedBox(height: 16),
              // display contacts if present in state
              if (state.filteredUserContacts!.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemCount: state.filteredUserContacts?.length ?? 0,
                    itemBuilder: (context, index) {
                      final contact = state.filteredUserContacts![index];
                      return ListTile(
                        leading: contact.avatar != null && contact.avatar != ''
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  contact.avatar ?? '',
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                        title: Text(
                          contact.name ?? '',
                        ),
                        subtitle: Text(
                          contact.phone ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            context.read<AppCubit>().deleteContact(contact);
                          },
                          icon: const Icon(Icons.delete),
                          color: Colors.redAccent,
                        ),
                        onTap: () {
                          context.read<AppCubit>().changeContactToEdit(contact);

                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const AddEditContactPage(isEditMode: true),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
            ],
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      const AddEditContactPage(isEditMode: false),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () => context.read<ThemeCubit>().toggleTheme(),
            child: const Icon(Icons.brightness_6),
          ),
        ],
      ),
    );
  }
}
