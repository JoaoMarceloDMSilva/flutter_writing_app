import 'package:hive/hive.dart';
import 'myhistory/create_history.dart';

class HiveAdapter extends TypeAdapter<CreateHistory> {
  @override
  final int typeId = 0;

  @override
  CreateHistory read(BinaryReader reader) {
    final title = reader.readString();
    final character = reader.readString();

    return CreateHistory(
      title: title,
      character: character,
    );
  }

  @override
  void write(BinaryWriter writer, CreateHistory obj) {
    writer.writeString(obj.title);
    writer.writeString(obj.character);
  }
}