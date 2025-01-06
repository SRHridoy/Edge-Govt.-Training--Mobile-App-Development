import 'dart:convert';
import 'package:dictionary_app/widgets/custom_listTile_for_results.dart';
import 'package:dictionary_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../utils/custom_colors.dart';
import '../widgets/loading_progress_indicator.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  bool isLoading = false;
  TextEditingController controller = TextEditingController();
  String definition = '';
  String phonetic = '';
  String audio = '';
  String partsOfSpeech = '';
  String synonyms = '';
  String antonyms = '';

  Future<void> fetchData(String word) async {
    setState(() {
      isLoading = true;
    });
    try {
      final response = await http.get(
        Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$word'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          setState(() {
            definition =
                data[0]['meanings'][0]['definitions'][0]['definition'] ?? 'N/A';
            phonetic = data[0]['phonetic'] ?? 'N/A';
            audio = data[0]['phonetics']?[0]['audio'] ?? '';

            partsOfSpeech = data[0]['meanings'][0]['partOfSpeech'] ?? 'N/A';
            synonyms = (data[0]['meanings'][0]['synonyms'] ?? []).join(', ');
            antonyms = (data[0]['meanings'][0]['antonyms'] ?? []).join(', ');
          });
        } else {
          setState(() {
            resetFields('Word not found.');
          });
        }
      } else {
        setState(() {
          resetFields('Error: Unable to fetch data.');
        });
      }
    } catch (e) {
      setState(() {
        resetFields('Error: $e');
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void resetFields(String message) {
    definition = message;
    phonetic = '';
    audio = '';
    partsOfSpeech = '';
    synonyms = '';
    antonyms = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondaryColor),
        backgroundColor: Colors.blue,
        title: Text(
          'Dictionary App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.language,
            color: secondaryColor,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      drawer: Drawer(),
      body: isLoading
          ? Center(
              child: LoadingProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(controller: controller, fetchData: fetchData),
                  SizedBox(
                    height: 15,
                  ),
                  if (phonetic.isNotEmpty)
                    CustomLisTileForResults(
                        cardColor: Colors.blue[50]!,
                        icon: Icons.volume_up,
                        iconColor: Colors.blue,
                        title: 'Phonetic:',
                        titleColor: Colors.blue[900]!,
                        dataFromApi: phonetic),
                  if (partsOfSpeech.isNotEmpty)
                    CustomLisTileForResults(
                        cardColor: Colors.green[50]!,
                        icon: Icons.category,
                        iconColor: Colors.green,
                        title: 'Parts of Speech:',
                        titleColor: Colors.green[900]!,
                        dataFromApi: partsOfSpeech),
                  if (definition.isNotEmpty)
                    CustomLisTileForResults(
                        cardColor: Colors.purple[50]!,
                        icon: Icons.menu_book,
                        iconColor: Colors.purple,
                        title: 'Definition:',
                        titleColor: Colors.purple[900]!,
                        dataFromApi: definition),
                  if (synonyms.isNotEmpty)
                    CustomLisTileForResults(
                        cardColor: Colors.yellow[50]!,
                        icon: Icons.sync_alt,
                        iconColor: Colors.orange,
                        title: 'Synonyms:',
                        titleColor: Colors.orange[900]!,
                        dataFromApi: synonyms),
                  if (antonyms.isNotEmpty)
                    CustomLisTileForResults(
                        cardColor: Colors.red[50]!,
                        icon: Icons.swap_horiz,
                        iconColor: Colors.red,
                        title: 'Antonyms:',
                        titleColor: Colors.red[900]!,
                        dataFromApi: antonyms),
                ],
              ),
            ),
    );
  }
}
