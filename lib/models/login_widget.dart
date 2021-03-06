import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:ecommerce_app/Screens/customer_store_screen.dart';
import 'package:ecommerce_app/Screens/owner_store_screen.dart';
import 'package:flutter/material.dart';

class loginContainer extends StatelessWidget {
  const loginContainer({
    Key? key,
    required TextEditingController phoneController,
    required TextEditingController passController,
  })  : _phoneController = phoneController,
        _passController = passController,
        super(key: key);

  final TextEditingController _phoneController;
  final TextEditingController _passController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 36,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            CountryCodePicker(
              onChanged: print,
              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: 'In',
              favorite: const ['+91', 'FR'],
              // optional. Shows only country name and flag
              showCountryOnly: false,
              // optional. Shows only country name and flag when popup is closed.
              showOnlyCountryWhenClosed: false,
              // optional. aligns the flag and the Text left
              alignLeft: false,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  //enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(8)),
                  //  borderSide: BorderSide(color: Colors.grey),
                  //  ),
                  // focusedBorder: OutlineInputBorder(
                  //      borderRadius: BorderRadius.all(Radius.circular(8)),
                  //     borderSide: BorderSide(color: Colors.grey)),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Your mobile number with country code',
                  hintText: 'Phone Number'),
              controller: _phoneController,
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  // enabledBorder: OutlineInputBorder(
                  //    borderRadius: BorderRadius.all(Radius.circular(8)),
                  //     borderSide: BorderSide(color: Colors.grey)),
                  //  focusedBorder: OutlineInputBorder(
                  //      borderRadius: BorderRadius.all(Radius.circular(8)),
                  //      borderSide: BorderSide(color: Colors.grey)),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Make your password',
                  hintText: 'Password'),
              controller: _passController,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 40.0,
              child: TextButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff566573)),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StoreOwner()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text("Login"),
              ),
            ),
            const SizedBox(
              height: 5.5,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign up here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
