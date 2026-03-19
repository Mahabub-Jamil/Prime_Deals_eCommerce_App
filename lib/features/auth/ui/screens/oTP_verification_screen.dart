import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:prime_deals/app/app_colors.dart';
import 'package:prime_deals/features/auth/ui/widgets/app_logo_widget.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  static const String name = 'otpverificationscreen';

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final PinInputController _otpTEController = PinInputController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120),
                AppLogoWidget(),
                const SizedBox(height: 12),
                Text(
                  "Enter OTP Code",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "A 6 digit code has been sent",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 22),
                MaterialPinFormField(
                  pinController: _otpTEController,
                  length: 6,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value == null || value.length < 6) {
                      return 'Please enter all 6 digits';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text("Next"),
                ),
                const SizedBox(height: 24),
                // TODO: enable button when 120s is done and invisible the text
                RichText(
                  text: TextSpan(
                    text: 'This code will expire in ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: '120s',
                        style: TextStyle(color: AppColor.themeColor),
                      ),
                    ],
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text('Resend Code')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _otpTEController.dispose();
  }
}
