import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book_app/application/cubit/app_cubit.dart';
import 'package:phone_book_app/domain/user_contact.dart';
import 'package:phone_book_app/shared/app_input.dart';
import 'package:phone_book_app/shared/validation_mixin.dart';
import 'package:uuid/uuid.dart';

class AddEditContactPage extends StatefulWidget {
  const AddEditContactPage({
    required this.isEditMode,
    super.key,
  });

  final bool isEditMode;

  @override
  State<AddEditContactPage> createState() => _AddEditContactPageState();
}

class _AddEditContactPageState extends State<AddEditContactPage>
    with AddEditContactFormValidatorMixin {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String nameErr = '';
  String phoneErr = '';
  UserContact contact = UserContact.initial();

  @override
  void initState() {
    final contact = context.read<AppCubit>().state.userContactsToEdit;

    if (widget.isEditMode) {
      nameController.text = contact?.name ?? '';
      phoneController.text = contact?.phone ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.isEditMode ? 'Edit Contact' : 'Add New Contact',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppInput(
              textEditingController: nameController,
              label: 'Name',
              error: nameErr,
              hint: 'Enter name',
              onChanged: (name) {
                final err = validateFullName(name);
                if (err != null) {
                  setState(() {
                    nameErr = err;
                  });
                } else {
                  setState(() {
                    nameErr = '';
                  });
                }
              },
            ),
            const SizedBox(height: 20),
            AppInput(
              textEditingController: phoneController,
              label: 'Phone Number',
              hint: 'Enter Phone Number',
              error: phoneErr,
              onChanged: (phone) {
                final err = validatePhoneNumber(phone);
                if (err != null) {
                  setState(() {
                    phoneErr = err;
                  });
                } else {
                  setState(() {
                    phoneErr = '';
                  });
                }
              },
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    final isValid = isFormValid(
                      fullName: nameController.text,
                      phoneNo: phoneController.text,
                    );

                    if (!isValid) {
                      const snackBar = SnackBar(
                        content:
                            Text('Form is invalid, rectify and try again.'),
                        backgroundColor: Colors.redAccent,
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      return;
                    }

                    final updatedContact = UserContact.initial().copyWith(
                      id: contact.id ?? const Uuid().v4(),
                      name: nameController.text,
                      phone: phoneController.text,
                    );

                    if (widget.isEditMode) {
                      context.read<AppCubit>().editContact(updatedContact);
                      Navigator.of(context).pop();
                    }

                    if (!widget.isEditMode) {
                      context.read<AppCubit>().addNewContact(updatedContact);
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Save'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
