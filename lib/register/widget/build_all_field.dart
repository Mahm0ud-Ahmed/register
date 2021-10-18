import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_text_field.dart';

class BuildAllField extends StatefulWidget {
  const BuildAllField({Key? key, this.formState}) : super(key: key);
  final GlobalKey<FormState>? formState;
  @override
  State<BuildAllField> createState() => _BuildAllFieldState();
}

class _BuildAllFieldState extends State<BuildAllField> {
  var _password = true;

  var _rePassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formState,
      child: Column(
        children: [
          CustomTextField(
            textType: TextInputType.name,
            prefixIcon: const Icon(FontAwesomeIcons.user),
            label: 'User Name',
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'This field should not be empty';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            textType: TextInputType.emailAddress,
            prefixIcon: const Icon(Icons.mail_outline),
            label: 'E-mail Address',
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'This field should not be empty';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(
            textType: TextInputType.number,
            prefixIcon: Icon(Icons.phone_android_outlined),
            label: 'Phone Number',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            textType: TextInputType.text,
            visibility: _password,
            label: 'Password',
            prefixIcon: const Icon(FontAwesomeIcons.key),
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'This field should not be empty';
              }
              return null;
            },
            suffixIcon: IconButton(
              icon: Icon(
                _password ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _password = !_password;
                });
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            textType: TextInputType.text,
            visibility: _rePassword,
            label: 'Confirm Password',
            prefixIcon: const Icon(FontAwesomeIcons.key),
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'This field should not be empty';
              }
              return null;
            },
            suffixIcon: IconButton(
              icon: Icon(
                _rePassword ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _rePassword = !_rePassword;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
