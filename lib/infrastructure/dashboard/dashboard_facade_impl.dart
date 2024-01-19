import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/models/models.dart';

import '../../domain/dashboard/i_dashboard_data_source.dart';
import '../../domain/dashboard/i_dashboard_facade.dart';
import '../../domain/dashboard/user_chatbot.dart';

@Injectable(as: IDashBoardFacade)
class DashboardFacadeImpl implements IDashBoardFacade {
  DashboardFacadeImpl(this._dataSource);

  final IDashBoardDataSource _dataSource;

  int _i = 0; // index group
  bool _isFinished = false;
  Uint8List? _fileBytes;

  final FormArray _formArray = FormArray([
    FormGroup({
      "name": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(36),
        ],
      ),
      "description": FormControl<String>(
        validators: [
          Validators.maxLength(255),
        ],
      ),
    }),
    FormGroup({
      "index_name": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(36),
        ],
      ),
      "open_ai_api_key": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(255),
        ],
      ),
      "pinecone_api_key": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(255),
        ],
      ),
      "pinecone_environment": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(255),
        ],
      ),
    }),
    FormGroup({
      "file": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(255),
        ],
      ),
    }),
  ]);

  @override
  int get index => _i;

  @override
  bool get isFinished => _isFinished;

  @override
  FormGroup get formGroup => _formArray.control('$_i') as FormGroup;

  @override
  int get totalForms => _formArray.controls.length;

  @override
  int backQuestion() {
    // If the index is grater than the minimum you can extract 1.
    // Otherwise return the last index.
    if (_i > 0) return _i--;
    return 0;
  }

  @override
  int nextQuestion() {
    if (_i + 1 < totalForms) return _i++;
    _isFinished = true;
    return totalForms;
  }

  @override
  Future<void> createNewIndexFromCsv() async {
    _dataSource.createNewIndexFromCsv(_fileBytes!);
  }

  @override
  Future<List<UserChatBot>> getUserChatBots() => _dataSource.getUserChatBots();

  @override
  Future<void> getFilePicker() async {
    // Because is Picker web I use this solution from the documentation:
    //https://github.com/miguelpruivo/flutter_file_picker/wiki/FAQ
    final FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result is FilePickerResult && result.files.isNotEmpty) {
      // Add the values to the last form to validate the information.
      final fileBytes = result.files.first.bytes;
      final fileName = result.files.first.name;
      formGroup.control('file').value = fileName;
      _fileBytes = fileBytes;
    }
  }
}
