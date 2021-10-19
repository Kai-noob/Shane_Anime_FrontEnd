import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TextFormBuilder extends StatefulWidget {
  final String? initialValue;
  final bool? enabled;
  final String? hintText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final FocusNode? focusNode, nextFocusNode;
  final VoidCallback? submitAction;
  final FormFieldValidator? validateFunction;
  final Function? onSaved, onChange;
  final Key? key;
  final IconData prefix;

  TextFormBuilder(
      {required this.prefix,
      this.initialValue,
      this.enabled,
      this.hintText,
      this.textInputType,
      this.controller,
      this.textInputAction,
      this.nextFocusNode,
      this.focusNode,
      this.submitAction,
      this.obscureText = false,
      this.validateFunction,
      this.onSaved,
      this.onChange,
      this.key});

  @override
  _TextFormBuilderState createState() => _TextFormBuilderState();
}

class _TextFormBuilderState extends State<TextFormBuilder> {
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300),
            child: TextFormField(
              key: widget.key,
              // controller: widget.controller,
              obscureText: widget.obscureText!,
              keyboardType: widget.textInputType,
              validator: widget.validateFunction,
              onSaved: (val) {
                // error = widget.validateFunction!(val)!;
                // setState(() {});
                // widget.onSaved!(val!);
              },
              textInputAction: widget.textInputAction,
              focusNode: widget.focusNode,
              onFieldSubmitted: (String term) {
                if (widget.nextFocusNode != null) {
                  widget.focusNode!.unfocus();
                  FocusScope.of(context).requestFocus(widget.nextFocusNode);
                } else {
                  widget.submitAction!();
                }
              },
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 4),
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: widget.hintText,
                  errorStyle: TextStyle(height: 0.0, fontSize: 0.0),
                  prefixIcon: Icon(
                    widget.prefix,
                    size: 15,
                  )),
            ),
          ),
          // SizedBox(height: 5.0),
          // Visibility(
          //   visible: error != null,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 10.0),
          //     child: Text(
          //       '$error',
          //       style: TextStyle(
          //         color: Colors.red[700],
          //         fontSize: 12.0,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
