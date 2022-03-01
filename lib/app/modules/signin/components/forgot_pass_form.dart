import 'package:barbershops/app/shared/components/custom_button.dart';
import 'package:barbershops/app/shared/components/custom_suffix_icon.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../signin_store.dart';
import 'no_account_widget.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends ModularState<ForgotPassForm, SigninStore> {
  final _formKey = GlobalKey<FormState>();
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Insira o seu email',
              suffixIcon: CustomSuffixIcon(icon: kForgotPassIconAssetPathEmail),
            ),
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return kEmailNullError;
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                return kInvalidEmailError;
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          CustomButton(
            text: 'Enviar',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                store.sendPasswordResetEmail(email: email, context: context);
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          const NoAccountWidget(),
        ],
      ),
    );
  }
}
