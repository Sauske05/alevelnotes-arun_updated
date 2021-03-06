import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:playstore_app/widgets/ChangeThemeButtonWidget.dart';
import 'package:provider/provider.dart';

import 'package:playstore_app/theme/theme_provider.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _querycontroller = TextEditingController();
  final email = FocusNode();
  final query = FocusNode();
  var userdetail = {
    'name': '',
    'email': '',
    'query': """
                    """,
  };
  void _saveform() async {
    final validate = _formkey.currentState!.validate();
    if (!validate) {
      return;
    }
    _formkey.currentState!.save();
    print(userdetail);
    FirebaseFirestore.instance.collection('Usersdata').add({
      'name': userdetail['name'],
      'email': userdetail['email'],
      'query': userdetail['query'],
      'date': DateTime.now().toString()
    });
    _namecontroller.clear();
    _emailcontroller.clear();
    _querycontroller.clear();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Response Recorded!'),
            content: const Text(
                'Your response has been recorded and we will get back to you shortly.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          );
        });
    // ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text('Your response has been recorded.')));
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final appbarColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            // ? Color.fromARGB(255, 62, 61, 61)
            ? const Color.fromARGB(255, 62, 61, 61)
            : Colors.blue.shade600;
            final textWhite =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            // ? Color.fromARGB(255, 62, 61, 61)
            ? const Color.fromARGB(227, 56, 53, 53)
            : const Color(0xFFFFFFFF);
    return Scaffold(
      backgroundColor: textWhite,
      appBar: AppBar(
        title: const Text('Help and Support'),
                  actions: [ChangeThemeButtonWidget()],
                  backgroundColor: appbarColor,

      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                Card(
                  child: TextFormField(
                    controller: _namecontroller,
                    decoration: const InputDecoration(
                        label: Text('Full Name'),
                        hintText: 'Enter your full Name',
                        contentPadding: EdgeInsets.all(8)),
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(email);
                    },
                    onSaved: (value) {
                      userdetail['name'] = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Provide a Value';
                        // check for the regular expression.
                      } else if (value.contains(RegExp(r'[0-9]'))) {
                        return 'Enter a valid name.';
                      }
                      return null;
                    },
                  ),
                ),
                Card(
                  child: TextFormField(
                      // autovalidateMode: AutovalidateMode.,
                      controller: _emailcontroller,
                      focusNode: email,
                      decoration: const InputDecoration(
                        label: Text('Email Address'),
                        hintText: 'Eg: demo123@gmail.com',
                        contentPadding: EdgeInsets.all(8),
                      ),
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(query);
                      },
                      onSaved: (value) {
                        userdetail['email'] = value!;
                      },
                      validator: (value) => validateEmail(value)),
                ),
                Card(
                  child: TextFormField(
                    controller: _querycontroller,
                    maxLines: 8,
                    focusNode: query,
                    decoration: const InputDecoration(
                      label: Text('Query'),
                      // hintText: 'Enter your full Name',
                      contentPadding: EdgeInsets.all(8),
                    ),
                    textInputAction: TextInputAction.done,
                    onSaved: ((newValue) {
                      setState(() {
                        userdetail['query'] = newValue!;
                      });
                    }),
                    validator: (value) {
                      if (!(value!.length > 10) && value.isNotEmpty) {
                        return "Enter valid query of more than 10 characters!";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextButton(
                      onPressed: () {
                        _saveform();
                      },
                      child: const Text('Submit')),
                )
              ],
            )),
      ),
    );
  }
}
