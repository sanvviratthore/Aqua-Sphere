import 'package:flutter/material.dart';

class SubmitTipPage extends StatefulWidget {
  @override
  _SubmitTipPageState createState() => _SubmitTipPageState();
}

class _SubmitTipPageState extends State<SubmitTipPage> {
  final _formKey = GlobalKey<FormState>();
  String _tipTitle = '';
  String _tipDescription = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit a Water-Saving Tip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Tip Title'),
                onChanged: (value) {
                  setState(() {
                    _tipTitle = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Tip Description'),
                onChanged: (value) {
                  setState(() {
                    _tipDescription = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save the tip (logic can be added later)
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Tip Submitted')));
                  }
                },
                child: Text('Submit Tip'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
