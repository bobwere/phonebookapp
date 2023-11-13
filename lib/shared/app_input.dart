// ignore_for_file: avoid_multiple_declarations_per_line, library_private_types_in_public_api, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
class AppInput extends StatefulWidget {
  ///
  const AppInput({
    required this.textEditingController,
    super.key,
    this.validator,
    this.inputFormatters = const [],
    this.enabled,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
    this.minLines = 1,
    this.hint,
    this.prefixWidget,
    this.obscureText,
    this.suffixWidget,
    this.textInputType,
    this.label,
    this.error,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  });

  ///
  final String? label;

  ///
  final void Function(String value)? onChanged;

  ///
  final TextInputType? textInputType;

  ///
  final int? maxLength, maxLines, minLines;

  ///
  final TextEditingController? textEditingController;

  ///
  final bool? obscureText;

  ///
  final String? hint;

  ///
  final bool? enabled;

  ///
  final String? Function(String?)? validator;

  ///
  final Widget? suffixWidget;

  ///
  final Widget? prefixWidget;

  ///
  final List<TextInputFormatter>? inputFormatters;

  ///
  final EdgeInsets? padding;

  ///
  final String? error;

  @override
  _AppInputState createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.label != null)
            Text(
              widget.label!,
              // style: textStyle.labelLarge,
            ),
          if (widget.label != null) const SizedBox(height: 8),
          TextFormField(
            enabled: widget.enabled ?? true,
            maxLength: widget.maxLength,
            onChanged: widget.onChanged,
            validator: widget.validator,
            keyboardType: widget.textInputType,
            inputFormatters: widget.inputFormatters,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            controller: widget.textEditingController,
            obscureText: widget.obscureText ?? false,
            decoration: InputDecoration(
              prefixIcon: widget.prefixWidget,
              hintText: widget.hint ?? '',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey),
              suffixIcon: widget.suffixWidget,
            ),
          ),
          if (widget.error != null && widget.error!.isNotEmpty)
            const SizedBox(height: 4),
          if (widget.error != null && widget.error!.isNotEmpty)
            Text(
              widget.error!,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 10,
                    color: Colors.redAccent,
                  ),
            ),
        ],
      ),
    );
  }
}
