import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../utilities/fields.dart';
import '../../../utilities/scroll_animations.dart';
import 'registration_form.dart';

class RegistrationFormForEmailAndPassword extends StatelessWidget {
  const RegistrationFormForEmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final registrationFormProvider = context.read<RegistrationForm>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SvgPicture.asset('assets/login_screen/splitit_logo.svg'),
            const SizedBox(height: 30),
            Text(
              'Create Account',
              style:
                  Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: textFieldDecoration_filled.copyWith(labelText: 'Email'),
              controller: registrationFormProvider.emailFieldController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: textFieldDecoration_filled.copyWith(labelText: 'Password'),
              obscureText: true,
              controller: registrationFormProvider.passwordFieldController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: textFieldDecoration_filled.copyWith(labelText: 'Confirm Password'),
              obscureText: true,
              controller: registrationFormProvider.confirmPasswordController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: registrationFormProvider.submitEmailAndPassword,
              child: const Text('Next'),
            ),
          ]),
        ),
      ),
    );
  }
}

class RegistrationFormForUserData extends StatelessWidget {
  const RegistrationFormForUserData({super.key});

  @override
  Widget build(BuildContext context) {
    final registrationFormProvider = context.read<RegistrationForm>();

    return WillPopScope(
      onWillPop: () async {
        await registrationFormProvider.pageController.animateToPageWithDefaults(0);
        return false;
      },
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Center(
            child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              SvgPicture.asset('assets/login_screen/splitit_logo.svg'),
              const SizedBox(height: 30),
              Text(
                'Create Account',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: textFieldDecoration_filled.copyWith(labelText: 'Name*'),
                controller: registrationFormProvider.nameFieldController,
              ),
              const SizedBox(height: 20),
              DateFormField(
                decoration: dateFieldDecoration.copyWith(labelText: 'Birthday*'),
                controller: registrationFormProvider.birthdayFieldController,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: textFieldDecoration_filled.copyWith(labelText: 'Quote'),
                controller: registrationFormProvider.quoteFieldController,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: registrationFormProvider.createUser,
                child: const Text('Get Started'),
              ),
            ])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: BackButton(
              onPressed: () =>
                  registrationFormProvider.pageController.animateToPageWithDefaults(0)),
        ),
      ]),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  final PageController _pageController;

  final _formKey = GlobalKey<FormState>();

  final registrationForm = RegistrationForm();

  RegistrationScreen({super.key, required PageController pageController})
      : _pageController = pageController;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Form(
          key: _formKey,
          child: Provider<RegistrationForm>(
            create: (context) => registrationForm,
            builder: (context, child) => DefaultTabController(
              length: 2,
              child: Builder(
                builder: (context) => Column(
                  children: [
                    Expanded(
                      child: PageView(
                        onPageChanged: (index) => DefaultTabController.of(context).index = index,
                        controller: registrationForm.pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          RegistrationFormForEmailAndPassword(),
                          RegistrationFormForUserData(),
                        ],
                      ),
                    ),
                    const TabPageSelector(),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () => _pageController.animateToPageWithDefaults(0),
              child: const Text('Log In'),
            ),
          ],
        ),
      );
}
