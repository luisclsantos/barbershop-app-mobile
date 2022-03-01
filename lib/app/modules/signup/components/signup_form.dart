import 'package:barbershops/app/shared/components/custom_button.dart';
import 'package:barbershops/app/shared/components/custom_checkbox.dart';
import 'package:barbershops/app/shared/components/custom_suffix_icon.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../signup_store.dart';
import 'has_account_widget.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends ModularState<SignupForm, SignupStore> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String email;
  late String password = '';
  late String confirmPassword;
  bool isAcceptTerms = false;

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildCheckBoxTermsAndConditions(),
          SizedBox(height: getProportionateScreenHeight(20)),
          SizedBox(height: getProportionateScreenHeight(40)),
          CustomButton(
            text: "Cadastrar",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                store.signUpWithEmailAndPassword(
                  email: email,
                  password: password,
                  name: name,
                  isAcceptTerms: isAcceptTerms,
                  photoURL: kProfileDefaultImageNetwork,
                  context: context,
                );
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          const HasAccountWidget()
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 6) {
          return kShortPassError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Senha",
        hintText: "Digite a senha",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: kSignUpIconAssetPathPassword),
        labelStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
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
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Digite seu email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: kSignUpIconAssetPathEmail),
        labelStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue!,
      onChanged: (value) {
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kNameNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Nome",
        hintText: "Digite seu nome",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: kSignUpIconAssetPathName),
        labelStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }

  Row buildCheckBoxTermsAndConditions() {
    return Row(
      children: [
        SizedBox(width: getProportionateScreenWidth(10)),
        InkWell(
          onTap: () {
            setState(() {
              isAcceptTerms = !isAcceptTerms;
            });
          },
          child: CustomCheckbox(isSelected: isAcceptTerms),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Text(
          'Aceitar os ',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
          ),
        ),
        GestureDetector(
          onTap: () => Modular.to.pushNamed('/profile/terms'),
          child: Text(
            'Termos e Condições',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: kPrimaryColor,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
