import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/auth/auth_controller.dart';
import '../../../shared/components/custom_button.dart';
import '../../../shared/components/custom_suffix_icon.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/utils/size_config.dart';
import '../account_store.dart';

class AccountForm extends StatefulWidget {
  const AccountForm({Key? key, required this.currentName}) : super(key: key);

  final String currentName;

  @override
  _AccountFormState createState() => _AccountFormState();
}

class _AccountFormState extends ModularState<AccountForm, AccountStore> {
  final _formKey = GlobalKey<FormState>();
  late String name;

  AuthController authController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(widget.currentName),
          SizedBox(height: getProportionateScreenHeight(40)),
          CustomButton(
            text: "Salvar",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                showAlertDialog(context);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildNameFormField(String currentName) {
    return TextFormField(
      initialValue: currentName,
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
        labelText: "Editar Nome",
        hintText: "Digite seu nome",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(icon: kSignUpIconAssetPathName),
        labelStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }

  Future<dynamic> showAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Alterar Nome?',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: kPrimaryColor,
              ),
            ),
            content: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Deseja realmente alterar seu nome para',
                      style: const TextStyle(
                        color: Colors.black45,
                      ),
                      children: [
                        TextSpan(
                          text: ' $name',
                          style: const TextStyle(
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(12)),
                  RichText(
                    text: TextSpan(
                      text: '*Ao clicar em ',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: getProportionateScreenHeight(10),
                      ),
                      children: [
                        TextSpan(
                          text: ' Sim',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: getProportionateScreenHeight(10),
                          ),
                        ),
                        TextSpan(
                          text:
                              ' você será redirecionado para a tela de login para reacessar o aplicativo',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: getProportionateScreenHeight(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Modular.to.pop();
                },
                child: const Text(
                  'Não',
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  store.updateUserDisplayName(
                    displayName: name,
                    context: context,
                  );

                  store.signOut(context: context);
                },
                child: const Text(
                  'Sim',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  getProportionateScreenWidth(20),
                ),
              ),
            ),
          );
        });
  }
}
