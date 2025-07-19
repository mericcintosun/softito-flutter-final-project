import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:veve/custom_widgets/floating_overlay.dart';
import 'package:veve/custom_widgets/footer.dart';
import 'package:veve/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _noEmailsCheckbox = false;
  bool _termsCheckbox = false;

  String? firstNameError;
  String? lastNameError;
  String? birthDateError;
  String? usernameError;
  String? passwordError;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _birthDateController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? validateFirstName(String value) {
    if (value.isEmpty) {
      return 'First name is required';
    }
    if (value.length < 2) {
      return 'First name must be at least 2 characters';
    }
    return null;
  }

  String? validateLastName(String value) {
    if (value.isEmpty) {
      return 'Last name is required';
    }
    if (value.length < 2) {
      return 'Last name must be at least 2 characters';
    }
    return null;
  }

  String? validateBirthDate(String value) {
    if (value.isEmpty) {
      return 'Birth date is required';
    }
    if (!RegExp(r'^\d{2}\.\d{2}\.\d{4}$').hasMatch(value)) {
      return 'Please enter date in dd.mm.yyyy format';
    }
    return null;
  }

  String? validateUsername(String value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    if (value.length < 3) {
      return 'Username must be at least 3 characters';
    }
    if (value.length > 20) {
      return 'Username must be less than 20 characters';
    }
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
      return 'Username can only contain letters, numbers and underscore';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least 1 uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least 1 lowercase letter';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least 1 number';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least 1 special character';
    }
    return null;
  }

  bool get isFormValid {
    return validateFirstName(_firstNameController.text) == null &&
        validateLastName(_lastNameController.text) == null &&
        validateBirthDate(_birthDateController.text) == null &&
        validateUsername(_usernameController.text) == null &&
        validatePassword(_passwordController.text) == null &&
        _termsCheckbox;
  }

  void validateForm() {
    setState(() {
      firstNameError = validateFirstName(_firstNameController.text);
      lastNameError = validateLastName(_lastNameController.text);
      birthDateError = validateBirthDate(_birthDateController.text);
      usernameError = validateUsername(_usernameController.text);
      passwordError = validatePassword(_passwordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingOverlay(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        child: SvgPicture.asset(
                          'assets/login_assets/login-logo.svg',
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "and be a part of our community!",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: 300,
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: SvgPicture.asset(
                                  'assets/login_assets/apple_logo.svg',
                                
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Continue with Apple',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[100],
                            foregroundColor: Colors.black87,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: SvgPicture.asset(
                                  'assets/login_assets/google_logo.svg',
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Continue with Google',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.black54,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "OR",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.black54,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Create a new account using email",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF3CD),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFFFE69C),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.warning_amber_rounded,
                              color: Color(0xFFFF8C00),
                              size: 24,
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                "You must provide correct information for identity verification, as it cannot be edited later. Providing incorrect information may result in you being unable to access certain features.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF856404),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 300,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          controller: _firstNameController,
                          onChanged: (value) {
                            validateForm();
                          },
                          decoration: InputDecoration(
                            hintText: 'First name',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    firstNameError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    firstNameError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    firstNameError != null
                                        ? Colors.red
                                        : Colors.blue,
                                width: 2,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            errorText: firstNameError,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          controller: _lastNameController,
                          onChanged: (value) {
                            validateForm();
                          },
                          decoration: InputDecoration(
                            hintText: 'Last name',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    lastNameError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    lastNameError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    lastNameError != null
                                        ? Colors.red
                                        : Colors.blue,
                                width: 2,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            errorText: lastNameError,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          controller: _birthDateController,
                          onChanged: (value) {
                            validateForm();
                          },
                          decoration: InputDecoration(
                            hintText: 'dd.mm.yyyy',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    birthDateError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    birthDateError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    birthDateError != null
                                        ? Colors.red
                                        : Colors.blue,
                                width: 2,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            errorText: birthDateError,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.grey[600],
                            ),
                          ),
                          keyboardType: TextInputType.datetime,
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Text(
                          "Must be 18 years old or over.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          controller: _usernameController,
                          onChanged: (value) {
                            validateForm();
                          },
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    usernameError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    usernameError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    usernameError != null
                                        ? Colors.red
                                        : Colors.blue,
                                width: 2,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            errorText: usernameError,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Text(
                          "Must be 3 to 20 characters long.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 300,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: TextField(
                          controller: _passwordController,
                          onChanged: (value) {
                            validateForm();
                          },
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    passwordError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    passwordError != null
                                        ? Colors.red
                                        : Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color:
                                    passwordError != null
                                        ? Colors.red
                                        : Colors.blue,
                                width: 2,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            errorText: passwordError,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Text(
                          "8 characters minimum. Must contain at least 1 uppercase character, 1 lowercase character, 1 number, 1 special character.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 300,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: _noEmailsCheckbox,
                              onChanged: (bool? value) {
                                setState(() {
                                  _noEmailsCheckbox = value ?? false;
                                });
                              },
                              activeColor: Color(0xff0052cc),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Text(
                                  "I do not want to receive emails about the latest drops, news and offers from VeVe.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: _termsCheckbox,
                              onChanged: (bool? value) {
                                setState(() {
                                  _termsCheckbox = value ?? false;
                                });
                              },
                              activeColor: Color(0xff0052cc),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "I have read and agree to the ",
                                      ),
                                      TextSpan(
                                        text: "Terms of Use",
                                        style: TextStyle(
                                          color: Color(0xff3690e7),
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(text: "."),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 300,
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          onPressed:
                              isFormValid
                                  ? () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Account created successfully!',
                                        ),
                                        backgroundColor: Colors.green,
                                      ),
                                    );
                                    Navigator.pushReplacementNamed(
                                      context,
                                      Routes.home,
                                    );
                                  }
                                  : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                isFormValid
                                    ? Color(0xff0052cc)
                                    : Colors.grey[400],
                            foregroundColor:
                                isFormValid ? Colors.white : Colors.grey[600],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/register_assets/privacy_shield_icon.svg',
                            width: 18,
                            height: 20,
                          ),
                          SizedBox(width: 6),
                          Text("Find out about our "),
                          TextButton(
                            onPressed: () {},
                            child: Text("Privacy Policy"),
                            style: TextButton.styleFrom(
                              foregroundColor: Color(0xff3690e7),
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          Text("."),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? "),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Sign In"),
                            style: TextButton.styleFrom(
                              foregroundColor: Color(0xff3690e7),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
