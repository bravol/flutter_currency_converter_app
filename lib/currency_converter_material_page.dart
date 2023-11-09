import 'package:flutter/material.dart';

//1.create a variable that stroes converted currency value.
//2.create a function that multiplies the value given by the text field
//3.store the value in the variable that we created
//4.display the variable

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

// a mrthod to covert values
  void _convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    //border
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          'Currency Converter',
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result != 0
                  ? result.toStringAsFixed(2)
                  : result.toStringAsFixed(0),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(
                    Icons.monetization_on,
                  ),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: TextButton(
            //     onPressed: () {},
            //     style: const ButtonStyle(
            //       backgroundColor: MaterialStatePropertyAll(Colors.black),
            //       foregroundColor: MaterialStatePropertyAll(Colors.white),
            //       minimumSize: MaterialStatePropertyAll(
            //         Size(double.infinity, 50),
            //       ),
            //       shape: MaterialStatePropertyAll(
            //         RoundedRectangleBorder(
            //           borderRadius: BorderRadius.all(
            //             Radius.circular(10),
            //           ),
            //         ),
            //       ),
            //     ),
            //     child: const Text('Convert'),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: _convert,
                style: TextButton.styleFrom(
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  minimumSize: const Size(double.infinity, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
