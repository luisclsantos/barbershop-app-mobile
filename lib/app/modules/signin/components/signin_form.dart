import 'package:barbershops/app/shared/components/custom_button.dart';
import 'package:barbershops/app/shared/components/custom_checkbox.dart';
import 'package:barbershops/app/shared/components/custom_suffix_icon.dart';
import 'package:barbershops/app/shared/components/social_card.dart';
import 'package:barbershops/app/shared/constants/constants.dart';
import 'package:barbershops/app/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../signin_store.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({Key? key}) : super(key: key);

  @override
  _SigninFormState createState() => _SigninFormState();
}

class _SigninFormState extends ModularState<SigninForm, SigninStore> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool isAcceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPassFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildCheckBoxTermsAndConditions(),
          SizedBox(height: getProportionateScreenHeight(30)),
          CustomButton(
            text: 'Entrar',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                store.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                  context: context,
                  isAcceptTerms: isAcceptTerms,
                );
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          buildSocialMediaSignin(),
        ],
      ),
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
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
        labelText: 'Senha',
        hintText: 'Insira sua senha',
        suffixIcon: CustomSuffixIcon(icon: kSigninIconAssetPathPassword),
        labelStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'Insira o seu email',
        suffixIcon: CustomSuffixIcon(icon: kSigninIconAssetPathEmail),
        labelStyle: TextStyle(color: kPrimaryColor),
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
        return null;
      },
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

  Row buildSocialMediaSignin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          press: () {
            store.signInWithGoogle(
              context: context,
              isAcceptTerms: isAcceptTerms,
            );
          },
          icon: kSigninIconAssetPathGoogle,
        ),
        SocialCard(
          press: () {
            store.signInWithFacebook(
              context: context,
              isAcceptTerms: isAcceptTerms,
            );
          },
          icon: kSigninIconAssetPathFacebook,
        ),
      ],
    );
  }
}
