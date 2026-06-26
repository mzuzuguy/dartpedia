import 'dart:io';

const version = '0.0.1';

void main(List<String> arguments) {

if (arguments.isEmpty || arguments.first == 'help') {
  printUsage();

} else if (arguments.first == 'version'){
  print('Dartpedia CLT version $version');
}else if(arguments.first == 'search'){
  final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);

}
else {
  printUsage();
  }
}
void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search' <ARTICLE-TITLE>"
  );
}
void searchWikipedia(List<String>? arguments){
  print('searchWikipedia received arguments: $arguments');
  final String articleTitle;

  //if the user didn't pass in arguments, request an article tittle.
  if (arguments == null || arguments.isEmpty) {
    print('PLease provide an article title.');

    articleTitle = stdin.readLineSync() ?? '';

  }else {
    articleTitle = arguments.join('  ');
  }
  print('Looking up articles aboit "$articleTitle". Please wait');
  print('Here ya go!');
  print('Pretend this is an article about $articleTitle');

  }