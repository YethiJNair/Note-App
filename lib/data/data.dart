import 'package:dio/dio.dart';
import 'package:noteapp/data/note_model/note_model.dart';
import 'package:noteapp/data/url.dart';

abstract class ApiCalls {
  Future<NoteModel?> createNote(NoteModel value);
  Future<List<NoteModel>> getAllNotes();
  Future<NoteModel?> updateNote(NoteModel value);
  Future<void> deleteNote(String id);
}

class NoteDB extends ApiCalls {
  final dio = Dio();
  final url = Url();

  @override
  Future<NoteModel?> createNote(NoteModel value) async {
    final result = await dio.post<NoteModel>(url.baseUrl + url.createNote);
    return result.data;
  }

  @override
  Future<void> deleteNote(String id) async {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<List<NoteModel>> getAllNotes() async {
    // TODO: implement getAllNotes
    throw UnimplementedError();
  }

  @override
  Future<NoteModel> updateNote(NoteModel value) async {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
