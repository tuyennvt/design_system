import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final focusNode = FocusNode();
  var _focused = false;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      print(focusNode.hasFocus);
      _focused = focusNode.hasFocus;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _focused = true;
                  setState(() {});
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all()),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      _DecoratorWidget(focused: _focused),
                      if (_focused) ...{
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: _InputWidget(focusNode: focusNode),
                        ),
                      }
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _InputWidget extends StatefulWidget {
  const _InputWidget({required this.focusNode});

  final FocusNode focusNode;

  @override
  State<_InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<_InputWidget> {
  @override
  void initState() {
    super.initState();
    // widget.focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 4, 18, 7),
      child: TextField(
        focusNode: widget.focusNode,
        autofocus: true,
        decoration: const InputDecoration.collapsed(hintText: 'ABC'),
        style: const TextStyle(
          fontSize: 16,
          height: 24 / 16,
          leadingDistribution: TextLeadingDistribution.even,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _DecoratorWidget extends StatelessWidget {
  const _DecoratorWidget({required this.focused});

  final bool focused;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 7,
      ),
      height: 62,
      duration: const Duration(milliseconds: 167),
      alignment: focused ? Alignment.topLeft : Alignment.centerLeft,
      child: AnimatedDefaultTextStyle(
        style: focused
            ? const TextStyle(
                fontSize: 14,
                height: 20 / 14,
                leadingDistribution: TextLeadingDistribution.even,
                color: Colors.blueAccent,
              )
            : const TextStyle(
                fontSize: 16,
                height: 24 / 16,
                fontWeight: FontWeight.w500,
                leadingDistribution: TextLeadingDistribution.even,
                color: Colors.black,
              ),
        duration: const Duration(milliseconds: 167),
        child: const Text('Label'),
      ),
    );
  }
}
