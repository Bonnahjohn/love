import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatorPage extends StatefulWidget {
  const TranslatorPage({super.key});

  @override
  State<TranslatorPage> createState() => _TranslatorPageState();
}

class _TranslatorPageState extends State<TranslatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Translator',
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [Treans()],
          ),
        ),
      )),
    );
  }
}

//mmmmmmmmmmmmmmmmmmmmmmm
class Treans extends StatefulWidget {
  const Treans({super.key});

  @override
  State<Treans> createState() => _TreansState();
}

class _TreansState extends State<Treans> {
  final translator = GoogleTranslator();
  final TextEditingController _textController = TextEditingController();
  String _translatedText = '';
  bool _isEnglishToFrench = true;

  void _translateText() {
    String text = _textController.text;
    translator
        .translate(text, to: _isEnglishToFrench ? 'fr' : 'en')
        .then((value) {
      setState(() {
        _translatedText = value.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _textController,
          decoration: const InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            filled: true,
            hintText: 'Enter text to translate',
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green)),
          onPressed: _translateText,
          icon: const Icon(Icons.translate),
          label: const Text(
            'Translate',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Translated Text:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        SelectableText(
          _translatedText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black)),
          onPressed: () {
            setState(() {
              _isEnglishToFrench = !_isEnglishToFrench;
            });
          },
          child: Text(
            _isEnglishToFrench ? 'Translate to French' : 'Translate to English',
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Please connect to the internet everytime you want to use the translator otherwise it will not work for you.',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
