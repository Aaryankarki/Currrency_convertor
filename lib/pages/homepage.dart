import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Currency Convertor",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "INR ${result.toStringAsFixed(2)}",

                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.currency_exchange),
                  hintText: "Please enter the amount ",
                  border: OutlineInputBorder(),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  print(textEditingController.text);
                  result = double.parse(textEditingController.text * 2);
                  setState(() {});
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color.fromARGB(255, 54, 162, 244),
                  ),
                  fixedSize: WidgetStateProperty.all(Size(200, 20)),
                  shape: WidgetStateProperty.all(
                    OvalBorder(side: BorderSide(width: 2)),
                  ),
                ),
                child: Text("Convert", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
