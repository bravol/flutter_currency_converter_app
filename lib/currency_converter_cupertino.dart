import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//stlf
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
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

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle: const Text(
          'Currency Converter',
        ),
        backgroundColor: CupertinoColors.systemGrey3,
      ),
      child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(
                    (8),
                  ),
                ),
                placeholder: 'Please enter the amount',
                prefix: const Icon(Icons.monetization_on),
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
              child: CupertinoButton(
                onPressed: _convert,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
