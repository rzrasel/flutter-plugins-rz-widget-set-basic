import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RzIconTextFormField extends StatelessWidget {
  const RzIconTextFormField({
    super.key,

    // Controller
    this.controller,
    this.focusNode,
    this.initialValue,

    // Text
    this.hintText,
    this.labelText,
    this.helperText,
    this.errorText,

    // Icons (Widget)
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,

    // Icons (IconData)
    this.prefixIconData,
    this.suffixIconData,
    this.prefixIconColor,
    this.suffixIconColor,
    this.prefixIconSize = 22,
    this.suffixIconSize = 22,

    // Icon Click
    this.onPrefixIconTap,
    this.onSuffixIconTap,

    // Style
    this.style,
    this.hintStyle,
    this.labelStyle,

    // Keyboard
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,

    // State
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,

    // Lines
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.expands = false,

    // Border
    this.contentPadding,
    this.borderRadius,
    this.borderColor,
    this.focusedBorderColor,
    this.fillColor,
    this.filled = false,

    // Cursor
    this.cursorColor,
    this.cursorHeight,
    this.cursorWidth = 2,

    // Formatter
    this.inputFormatters,

    // Validation
    this.validator,
    this.onSaved,
    this.autovalidateMode,

    // Events
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTapOutside,
  });

  //------------------------------------------------------------------------
  // Controller
  //------------------------------------------------------------------------

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? initialValue;

  //------------------------------------------------------------------------
  // Text
  //------------------------------------------------------------------------

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;

  //------------------------------------------------------------------------
  // Icons
  //------------------------------------------------------------------------

  final Widget? prefix;
  final Widget? suffix;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final IconData? prefixIconData;
  final IconData? suffixIconData;

  final Color? prefixIconColor;
  final Color? suffixIconColor;

  final double prefixIconSize;
  final double suffixIconSize;

  final VoidCallback? onPrefixIconTap;
  final VoidCallback? onSuffixIconTap;

  //------------------------------------------------------------------------
  // Style
  //------------------------------------------------------------------------

  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;

  //------------------------------------------------------------------------
  // Keyboard
  //------------------------------------------------------------------------

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;

  //------------------------------------------------------------------------
  // State
  //------------------------------------------------------------------------

  final bool enabled;
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  //------------------------------------------------------------------------
  // Lines
  //------------------------------------------------------------------------

  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool expands;

  //------------------------------------------------------------------------
  // Border
  //------------------------------------------------------------------------

  final EdgeInsetsGeometry? contentPadding;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? fillColor;
  final bool filled;

  //------------------------------------------------------------------------
  // Cursor
  //------------------------------------------------------------------------

  final Color? cursorColor;
  final double? cursorHeight;
  final double cursorWidth;

  //------------------------------------------------------------------------
  // Formatter
  //------------------------------------------------------------------------

  final List<TextInputFormatter>? inputFormatters;

  //------------------------------------------------------------------------
  // Validation
  //------------------------------------------------------------------------

  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final AutovalidateMode? autovalidateMode;

  //------------------------------------------------------------------------
  // Events
  //------------------------------------------------------------------------

  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final TapRegionCallback? onTapOutside;

  Widget? _buildPrefixIcon() {
    if (prefixIcon != null) return prefixIcon;

    if (prefixIconData == null) return null;

    if (onPrefixIconTap != null) {
      return IconButton(
        onPressed: onPrefixIconTap,
        icon: Icon(
          prefixIconData,
          size: prefixIconSize,
          color: prefixIconColor,
        ),
      );
    }

    return Icon(
      prefixIconData,
      size: prefixIconSize,
      color: prefixIconColor,
    );
  }

  Widget? _buildSuffixIcon() {
    if (suffixIcon != null) return suffixIcon;

    if (suffixIconData == null) return null;

    if (onSuffixIconTap != null) {
      return IconButton(
        onPressed: onSuffixIconTap,
        icon: Icon(
          suffixIconData,
          size: suffixIconSize,
          color: suffixIconColor,
        ),
      );
    }

    return Icon(
      suffixIconData,
      size: suffixIconSize,
      color: suffixIconColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius ?? BorderRadius.circular(12);

    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      initialValue: controller == null ? initialValue : null,

      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      textAlign: textAlign,

      enabled: enabled,
      readOnly: readOnly,
      autofocus: autofocus,

      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,

      maxLines: expands ? null : maxLines,
      minLines: expands ? null : minLines,
      maxLength: maxLength,
      expands: expands,

      style: style ?? const TextStyle(fontSize: 14),

      cursorColor: cursorColor,
      cursorHeight: cursorHeight,
      cursorWidth: cursorWidth,

      inputFormatters: inputFormatters,

      validator: validator,
      onSaved: onSaved,
      autovalidateMode: autovalidateMode,

      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onTapOutside: onTapOutside,

      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        errorText: errorText,

        hintStyle: hintStyle,
        labelStyle: labelStyle,

        prefix: prefix,
        suffix: suffix,

        prefixIcon: _buildPrefixIcon(),
        suffixIcon: _buildSuffixIcon(),

        filled: filled,
        fillColor: fillColor,
        isDense: true,

        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),

        border: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(
            color: focusedBorderColor ??
                Theme.of(context).colorScheme.primary,
            width: 1.5,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: const BorderSide(color: Colors.red),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}