import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/dashboard/i_dashboard_data_source.dart';
import '../../domain/dashboard/i_dashboard_facade.dart';
import '../../domain/dashboard/user_chatbot.dart';

const minLength = 5;
const maxLength = 255;

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
          Validators.minLength(minLength),
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
          Validators.minLength(minLength),
        ],
      ),
      "open_ai_api_key": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(maxLength),
          Validators.minLength(minLength),
        ],
      ),
      "pinecone_api_key": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(maxLength),
          Validators.minLength(minLength),
        ],
      ),
      "pinecone_environment": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(maxLength),
          Validators.minLength(minLength),
        ],
      ),
    }),
    FormGroup({
      "file": FormControl<String>(
        validators: [
          Validators.required,
          Validators.maxLength(maxLength),
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
  void resetForm() {
    _formArray.reset();
    _i = 0;
    _isFinished = false;
    _fileBytes = null;
  }

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
    final List<AbstractControl> controls = _formArray.controls;
    final queryParams = <String, String>{};
    for (final formGroup in controls) {
      if (formGroup is FormGroup) {
        // Unfold all the FormGroups and add to a final Dict
        queryParams.addAll(
          formGroup.rawValue.map((key, value) {
            final stringValue = value?.toString() ?? '';
            return MapEntry(key, stringValue);
          }),
        );
      }
    }
    // Remove File for the final query. Remember the file would be send it as bytes.
    queryParams.remove('file');
    await _dataSource.createNewIndexFromCsv(
      _fileBytes!,
      queryParams,
    );
  }

  @override
  Future<List<UserChatBot>> getUserChatBots() async =>
      await _dataSource.getUserChatBots();

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

  @override
  Future<void> updateChatBotActiveStatus(UserChatBot userChatBot) async {
    await _dataSource.updateChatBotActiveStatus(
      userChatBot.isActive,
      userChatBot.chatbotId,
    );
  }

  @override
  Future<void> deleteUserChatBot(UserChatBot userChatBot) async{
    await _dataSource.deleteUserChatBot(userChatBot);
  }
}
