import 'package:flutter/material.dart';

class BuildTextformfield extends StatefulWidget {
  final Widget? perfix;
  final controller;
  final String? Function(String? val)? validate;
  final TextInputType? type;
  final String? label;
  final String? hint;
  final Widget? suffix;
  final bool isSecure;

  BuildTextformfield(
      {Key? key,
        this.controller,
        this.perfix,
        this.validate,
        this.isSecure = false,
        this.hint,
        this.label,
        this.type,
        this.suffix})
      : super(key: key);

  @override
  _BuildTextformfieldState createState() => _BuildTextformfieldState();
}

class _BuildTextformfieldState extends State<BuildTextformfield> {
  late bool isSecure;

  @override
  void initState() {
    isSecure = widget.isSecure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          keyboardType: widget.type,
          obscureText: isSecure,
          decoration: InputDecoration(
            prefix: widget.perfix,
            labelText: widget.label,
            hintText: widget.hint,
            // suffixIcon: widget.suffix,
            suffixIcon: widget.isSecure
                ? IconButton(
                onPressed: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                icon: Icon(
                    isSecure ? Icons.visibility_off : Icons.visibility))
                : null,
          ),
          controller: widget.controller,
        validator: widget.validate,
      ),
    );
  }
}
