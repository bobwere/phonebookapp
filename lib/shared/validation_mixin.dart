import 'package:luthor/luthor.dart';

mixin AddEditContactFormValidatorMixin {
  String? validateFullName(String? fullName) {
    SingleValidationResult<String> validResult;

    if (fullName != null) {
      validResult = l
          .string()
          .min(1, message: 'Full name is required.')
          .validateValue(fullName);
    } else {
      return null;
    }

    return validResult.maybeWhen(
      error: (errors) => errors[0],
      orElse: () => null,
    );
  }

  String? validatePhoneNumber(String? phoneNo) {
    SingleValidationResult<String> validResult;

    if (phoneNo != null) {
      validResult = l
          .string()
          .min(1, message: 'Phone number is required.')
          .validateValue(phoneNo);
    } else {
      return null;
    }

    return validResult.maybeWhen(
      error: (errors) => errors[0],
      orElse: () => null,
    );
  }

  bool isFormValid({
    required String? fullName,
    required String? phoneNo,
  }) {
    final fullNameErr = validateFullName(fullName);
    if (fullNameErr != null) {
      return false;
    }

    final phoneNumberErr = validatePhoneNumber(phoneNo);
    if (phoneNumberErr != null) {
      return false;
    }

    return true;
  }
}
