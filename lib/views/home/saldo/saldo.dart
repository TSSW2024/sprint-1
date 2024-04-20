import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SaldoWidget extends StatefulWidget {
  final double saldo;

  const SaldoWidget({Key? key, required this.saldo}) : super(key: key);

  @override
  _SaldoWidgetState createState() => _SaldoWidgetState();
}

class _SaldoWidgetState extends State<SaldoWidget> {
  bool isVisible = false;

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.currency(locale: "es-CL", symbol: "\$");

    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(top: 100),
          width: 373,
          height: 100,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFF141738),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Saldo Total",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: toggleVisibility,
                        child: Icon(
                            isVisible ? Icons.visibility : Icons.visibility_off,
                            color: isVisible ? Colors.white : Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 0.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isVisible)
                    Text(formatCurrency.format(widget.saldo),
                        style: TextStyle(fontSize: 36, color: Colors.white))
                  else
                    Row(
                      children: List.generate(
                          6,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text("*",
                                    style: TextStyle(
                                        fontSize: 36, color: Colors.white)),
                              )),
                    ),
                  Container(
                    width: 120, // Ancho específico para el botón
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/depositar');
                      },
                      child: Text("Depositar",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF515DE2)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
