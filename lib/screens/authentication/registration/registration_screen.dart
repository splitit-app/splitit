import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utilities/fields.dart';
import '../../../utilities/scroll_animations.dart';
import 'registration_form.dart';

class RegistrationFormForEmailAndPassword extends StatelessWidget {
  const RegistrationFormForEmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistrationForm registrationForm = context.read();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SvgPicture.asset('assets/login_screen/splitit_logo.svg'),
            const SizedBox(height: 20),
            Text(
              'Create Account',
              style:
                  Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: textFieldDecoration_filled.copyWith(labelText: 'Email'),
              controller: registrationForm.emailFieldController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: textFieldDecoration_filled.copyWith(labelText: 'Password'),
              obscureText: true,
              controller: registrationForm.passwordFieldController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: textFieldDecoration_filled.copyWith(labelText: 'Confirm Password'),
              obscureText: true,
              controller: registrationForm.confirmPasswordController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: registrationForm.submitEmailAndPassword,
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
    final registrationForm = context.read<RegistrationForm>();

    return WillPopScope(
      onWillPop: () async {
        await registrationForm.pageController.animateToPageWithDefaults(0);
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
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: textFieldDecoration_filled.copyWith(labelText: 'Name*'),
                controller: registrationForm.nameFieldController,
              ),
              const SizedBox(height: 20),
              DateFormField(
                decoration: dateFieldDecoration_filled.copyWith(labelText: 'Birthday*'),
                controller: registrationForm.birthdayFieldController,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: textFieldDecoration_filled.copyWith(labelText: 'Quote'),
                controller: registrationForm.quoteFieldController,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: registrationForm.createUser,
                child: const Text('Get Started'),
              ),
            ])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: BackButton(
              onPressed: () async =>
                  await registrationForm.pageController.animateToPageWithDefaults(0)),
        ),
      ]),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final registrationForm = RegistrationForm(read: context.read);

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Provider.value(
          value: registrationForm,
          builder: (context, child) => Column(
            children: [
              Expanded(
                child: PageView(
                  controller: registrationForm.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    RegistrationFormForEmailAndPassword(),
                    RegistrationFormForUserData(),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: registrationForm.pageController,
                count: 2,
                effect: expandingDotsEffect,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Already have an account?'),
          TextButton(
            onPressed: () async =>
                await context.read<PageController>().animateToPageWithDefaults(0),
            child: const Text('Log In'),
          ),
        ],
      ),
    );
  }
}
