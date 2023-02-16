import 'package:file_download_tutorial/models/file_info.dart';
import 'package:file_download_tutorial/widgets/single_file_download.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FileDownloadExample extends StatefulWidget {
  const FileDownloadExample({Key? key}) : super(key: key);

  @override
  State<FileDownloadExample> createState() => _FileDownloadExampleState();
}

class _FileDownloadExampleState extends State<FileDownloadExample> {
  int doublePress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "File download example one",
          style:
              GoogleFonts.raleway(color: const Color.fromARGB(255, 21, 18, 32)),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: List.generate(filesData.length, (index) {
          var singleFile = filesData[index];
          return SingleFileDownload(fileInfo: singleFile);
        }),
      ),
    );
  }
}
