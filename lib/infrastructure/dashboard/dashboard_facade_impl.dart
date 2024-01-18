import 'package:injectable/injectable.dart';
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

  final FormArray _formArray = FormArray([
    FormGroup({
      "name": FormControl(),
      "description": FormControl(),
    }),
    FormGroup({
      "index_name": FormControl(),
      "open_ai_api_key": FormControl(),
      "pinecone_api_key": FormControl(),
      "pinecone_environment": FormControl(),
    }),
  ]);

  @override
  FormGroup get formGroup => _formArray.control('$_i') as FormGroup;

  @override
  int get totalForm => _formArray.controls.length;

  @override
  int backQuestion() => _i--;

  @override
  int nextQuestion() => _i++;

  @override
  Future<void> createNewIndexFromCsv() {
    // TODO: implement createNewIndexFromCsv
    throw UnimplementedError();
  }

  @override
  Future<List<UserChatBot>> getUserChatBots() => _dataSource.getUserChatBots();
}
