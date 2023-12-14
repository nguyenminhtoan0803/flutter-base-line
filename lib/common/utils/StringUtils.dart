class StringUtils {

  bool isEmpty(String parameter){
    if(parameter == '' || parameter == null){
      return true;
    }
    return false;
  }

  String nvl(String parameter){
    if(parameter == '' || parameter == null){
      return '';
    }
    return parameter;
  }
}
extension StringCastExtension on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}