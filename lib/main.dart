import 'package:boardview/models/inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom/board.dart';
import 'Provider/provider_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Container(
            margin: const EdgeInsets.all(0),
            child: Board(
              [
                BoardListsData(
                    items: List.generate(
                  500,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. $index",
                        style: GoogleFonts.firaSans(
                            fontSize: 19,
                            height: 1.3,
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w500)),
                  ),
                )),
                BoardListsData(
                    items: List.generate(
                  500,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, sunt in culpa qui officia deserunt mollit anim id est laborum. $index",
                        style: GoogleFonts.firaSans(
                            fontSize: 19,
                            height: 1.3,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.w500)),
                  ),
                )),
                BoardListsData(
                    items: List.generate(
                  7,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  $index",
                        style: GoogleFonts.firaSans(
                            fontSize: 19,
                            height: 1.3,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w500)),
                  ),
                )),
                BoardListsData(
                    items: List.generate(
                  1,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sunt in culpa qui officia deserunt mollit anim id est laborum.$index",
                        style: GoogleFonts.firaSans(
                            fontSize: 18,
                            height: 1.3,
                            color: Colors.red.shade800,
                            fontWeight: FontWeight.w500)),
                  ),
                )),
                BoardListsData(
                    items: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sunt in culpa qui officia deserunt mollit anim id est laborum.$index",
                        style: GoogleFonts.firaSans(
                            fontSize: 18,
                            height: 1.3,
                            color: Colors.red.shade800,
                            fontWeight: FontWeight.w500)),
                  ),
                )),
                BoardListsData(
                    items: List.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sunt in culpa qui officia deserunt mollit anim id est laborum.$index",
                        style: GoogleFonts.firaSans(
                            fontSize: 18,
                            height: 1.3,
                            color: Colors.red.shade800,
                            fontWeight: FontWeight.w500)),
                  ),
                ))
              ],
              backgroundColor: Colors.white,
              displacementY: 124,
              displacementX: 100,
              textStyle: GoogleFonts.firaSans(
                  fontSize: 19,
                  height: 1.3,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500),
            ),
          ))));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    BoardListsData(items: []);
    ref.read(ProviderList.reorderProvider).screenHeight =
        MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            color: Colors.black,
            //  margin: const EdgeInsets.only(top: 24),
            child: Container()));
  }
}
