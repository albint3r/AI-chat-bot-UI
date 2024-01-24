// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatbot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatBotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) started,
    required TResult Function(String? textQuestion) postQuestion,
    required TResult Function() changeMode,
    required TResult Function() connectToChatAgentWebSocket,
    required TResult Function() disconnectToChatAgentWebSocket,
    required TResult Function(String? textQuestion)
        addEventToChatAgentWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? started,
    TResult? Function(String? textQuestion)? postQuestion,
    TResult? Function()? changeMode,
    TResult? Function()? connectToChatAgentWebSocket,
    TResult? Function()? disconnectToChatAgentWebSocket,
    TResult? Function(String? textQuestion)? addEventToChatAgentWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? started,
    TResult Function(String? textQuestion)? postQuestion,
    TResult Function()? changeMode,
    TResult Function()? connectToChatAgentWebSocket,
    TResult Function()? disconnectToChatAgentWebSocket,
    TResult Function(String? textQuestion)? addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostQuestion value) postQuestion,
    required TResult Function(_ChangeMode value) changeMode,
    required TResult Function(_ConnectToChatAgentWebSocket value)
        connectToChatAgentWebSocket,
    required TResult Function(_DisconnectToChatAgentWebSocket value)
        disconnectToChatAgentWebSocket,
    required TResult Function(_AddEventToChatAgentWebSocket value)
        addEventToChatAgentWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostQuestion value)? postQuestion,
    TResult? Function(_ChangeMode value)? changeMode,
    TResult? Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult? Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult? Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostQuestion value)? postQuestion,
    TResult Function(_ChangeMode value)? changeMode,
    TResult Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBotEventCopyWith<$Res> {
  factory $ChatBotEventCopyWith(
          ChatBotEvent value, $Res Function(ChatBotEvent) then) =
      _$ChatBotEventCopyWithImpl<$Res, ChatBotEvent>;
}

/// @nodoc
class _$ChatBotEventCopyWithImpl<$Res, $Val extends ChatBotEvent>
    implements $ChatBotEventCopyWith<$Res> {
  _$ChatBotEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatBotEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$StartedImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.chatId);

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatBotEvent.started(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) started,
    required TResult Function(String? textQuestion) postQuestion,
    required TResult Function() changeMode,
    required TResult Function() connectToChatAgentWebSocket,
    required TResult Function() disconnectToChatAgentWebSocket,
    required TResult Function(String? textQuestion)
        addEventToChatAgentWebSocket,
  }) {
    return started(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? started,
    TResult? Function(String? textQuestion)? postQuestion,
    TResult? Function()? changeMode,
    TResult? Function()? connectToChatAgentWebSocket,
    TResult? Function()? disconnectToChatAgentWebSocket,
    TResult? Function(String? textQuestion)? addEventToChatAgentWebSocket,
  }) {
    return started?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? started,
    TResult Function(String? textQuestion)? postQuestion,
    TResult Function()? changeMode,
    TResult Function()? connectToChatAgentWebSocket,
    TResult Function()? disconnectToChatAgentWebSocket,
    TResult Function(String? textQuestion)? addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostQuestion value) postQuestion,
    required TResult Function(_ChangeMode value) changeMode,
    required TResult Function(_ConnectToChatAgentWebSocket value)
        connectToChatAgentWebSocket,
    required TResult Function(_DisconnectToChatAgentWebSocket value)
        disconnectToChatAgentWebSocket,
    required TResult Function(_AddEventToChatAgentWebSocket value)
        addEventToChatAgentWebSocket,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostQuestion value)? postQuestion,
    TResult? Function(_ChangeMode value)? changeMode,
    TResult? Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult? Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult? Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostQuestion value)? postQuestion,
    TResult Function(_ChangeMode value)? changeMode,
    TResult Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatBotEvent {
  const factory _Started(final String chatId) = _$StartedImpl;

  String get chatId;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostQuestionImplCopyWith<$Res> {
  factory _$$PostQuestionImplCopyWith(
          _$PostQuestionImpl value, $Res Function(_$PostQuestionImpl) then) =
      __$$PostQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? textQuestion});
}

/// @nodoc
class __$$PostQuestionImplCopyWithImpl<$Res>
    extends _$ChatBotEventCopyWithImpl<$Res, _$PostQuestionImpl>
    implements _$$PostQuestionImplCopyWith<$Res> {
  __$$PostQuestionImplCopyWithImpl(
      _$PostQuestionImpl _value, $Res Function(_$PostQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textQuestion = freezed,
  }) {
    return _then(_$PostQuestionImpl(
      textQuestion: freezed == textQuestion
          ? _value.textQuestion
          : textQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostQuestionImpl implements _PostQuestion {
  const _$PostQuestionImpl({this.textQuestion});

  @override
  final String? textQuestion;

  @override
  String toString() {
    return 'ChatBotEvent.postQuestion(textQuestion: $textQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostQuestionImpl &&
            (identical(other.textQuestion, textQuestion) ||
                other.textQuestion == textQuestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostQuestionImplCopyWith<_$PostQuestionImpl> get copyWith =>
      __$$PostQuestionImplCopyWithImpl<_$PostQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) started,
    required TResult Function(String? textQuestion) postQuestion,
    required TResult Function() changeMode,
    required TResult Function() connectToChatAgentWebSocket,
    required TResult Function() disconnectToChatAgentWebSocket,
    required TResult Function(String? textQuestion)
        addEventToChatAgentWebSocket,
  }) {
    return postQuestion(textQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? started,
    TResult? Function(String? textQuestion)? postQuestion,
    TResult? Function()? changeMode,
    TResult? Function()? connectToChatAgentWebSocket,
    TResult? Function()? disconnectToChatAgentWebSocket,
    TResult? Function(String? textQuestion)? addEventToChatAgentWebSocket,
  }) {
    return postQuestion?.call(textQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? started,
    TResult Function(String? textQuestion)? postQuestion,
    TResult Function()? changeMode,
    TResult Function()? connectToChatAgentWebSocket,
    TResult Function()? disconnectToChatAgentWebSocket,
    TResult Function(String? textQuestion)? addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (postQuestion != null) {
      return postQuestion(textQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostQuestion value) postQuestion,
    required TResult Function(_ChangeMode value) changeMode,
    required TResult Function(_ConnectToChatAgentWebSocket value)
        connectToChatAgentWebSocket,
    required TResult Function(_DisconnectToChatAgentWebSocket value)
        disconnectToChatAgentWebSocket,
    required TResult Function(_AddEventToChatAgentWebSocket value)
        addEventToChatAgentWebSocket,
  }) {
    return postQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostQuestion value)? postQuestion,
    TResult? Function(_ChangeMode value)? changeMode,
    TResult? Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult? Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult? Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
  }) {
    return postQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostQuestion value)? postQuestion,
    TResult Function(_ChangeMode value)? changeMode,
    TResult Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (postQuestion != null) {
      return postQuestion(this);
    }
    return orElse();
  }
}

abstract class _PostQuestion implements ChatBotEvent {
  const factory _PostQuestion({final String? textQuestion}) =
      _$PostQuestionImpl;

  String? get textQuestion;
  @JsonKey(ignore: true)
  _$$PostQuestionImplCopyWith<_$PostQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeModeImplCopyWith<$Res> {
  factory _$$ChangeModeImplCopyWith(
          _$ChangeModeImpl value, $Res Function(_$ChangeModeImpl) then) =
      __$$ChangeModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeModeImplCopyWithImpl<$Res>
    extends _$ChatBotEventCopyWithImpl<$Res, _$ChangeModeImpl>
    implements _$$ChangeModeImplCopyWith<$Res> {
  __$$ChangeModeImplCopyWithImpl(
      _$ChangeModeImpl _value, $Res Function(_$ChangeModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeModeImpl implements _ChangeMode {
  const _$ChangeModeImpl();

  @override
  String toString() {
    return 'ChatBotEvent.changeMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) started,
    required TResult Function(String? textQuestion) postQuestion,
    required TResult Function() changeMode,
    required TResult Function() connectToChatAgentWebSocket,
    required TResult Function() disconnectToChatAgentWebSocket,
    required TResult Function(String? textQuestion)
        addEventToChatAgentWebSocket,
  }) {
    return changeMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? started,
    TResult? Function(String? textQuestion)? postQuestion,
    TResult? Function()? changeMode,
    TResult? Function()? connectToChatAgentWebSocket,
    TResult? Function()? disconnectToChatAgentWebSocket,
    TResult? Function(String? textQuestion)? addEventToChatAgentWebSocket,
  }) {
    return changeMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? started,
    TResult Function(String? textQuestion)? postQuestion,
    TResult Function()? changeMode,
    TResult Function()? connectToChatAgentWebSocket,
    TResult Function()? disconnectToChatAgentWebSocket,
    TResult Function(String? textQuestion)? addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (changeMode != null) {
      return changeMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostQuestion value) postQuestion,
    required TResult Function(_ChangeMode value) changeMode,
    required TResult Function(_ConnectToChatAgentWebSocket value)
        connectToChatAgentWebSocket,
    required TResult Function(_DisconnectToChatAgentWebSocket value)
        disconnectToChatAgentWebSocket,
    required TResult Function(_AddEventToChatAgentWebSocket value)
        addEventToChatAgentWebSocket,
  }) {
    return changeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostQuestion value)? postQuestion,
    TResult? Function(_ChangeMode value)? changeMode,
    TResult? Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult? Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult? Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
  }) {
    return changeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostQuestion value)? postQuestion,
    TResult Function(_ChangeMode value)? changeMode,
    TResult Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (changeMode != null) {
      return changeMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeMode implements ChatBotEvent {
  const factory _ChangeMode() = _$ChangeModeImpl;
}

/// @nodoc
abstract class _$$ConnectToChatAgentWebSocketImplCopyWith<$Res> {
  factory _$$ConnectToChatAgentWebSocketImplCopyWith(
          _$ConnectToChatAgentWebSocketImpl value,
          $Res Function(_$ConnectToChatAgentWebSocketImpl) then) =
      __$$ConnectToChatAgentWebSocketImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectToChatAgentWebSocketImplCopyWithImpl<$Res>
    extends _$ChatBotEventCopyWithImpl<$Res, _$ConnectToChatAgentWebSocketImpl>
    implements _$$ConnectToChatAgentWebSocketImplCopyWith<$Res> {
  __$$ConnectToChatAgentWebSocketImplCopyWithImpl(
      _$ConnectToChatAgentWebSocketImpl _value,
      $Res Function(_$ConnectToChatAgentWebSocketImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectToChatAgentWebSocketImpl
    implements _ConnectToChatAgentWebSocket {
  const _$ConnectToChatAgentWebSocketImpl();

  @override
  String toString() {
    return 'ChatBotEvent.connectToChatAgentWebSocket()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectToChatAgentWebSocketImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) started,
    required TResult Function(String? textQuestion) postQuestion,
    required TResult Function() changeMode,
    required TResult Function() connectToChatAgentWebSocket,
    required TResult Function() disconnectToChatAgentWebSocket,
    required TResult Function(String? textQuestion)
        addEventToChatAgentWebSocket,
  }) {
    return connectToChatAgentWebSocket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? started,
    TResult? Function(String? textQuestion)? postQuestion,
    TResult? Function()? changeMode,
    TResult? Function()? connectToChatAgentWebSocket,
    TResult? Function()? disconnectToChatAgentWebSocket,
    TResult? Function(String? textQuestion)? addEventToChatAgentWebSocket,
  }) {
    return connectToChatAgentWebSocket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? started,
    TResult Function(String? textQuestion)? postQuestion,
    TResult Function()? changeMode,
    TResult Function()? connectToChatAgentWebSocket,
    TResult Function()? disconnectToChatAgentWebSocket,
    TResult Function(String? textQuestion)? addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (connectToChatAgentWebSocket != null) {
      return connectToChatAgentWebSocket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostQuestion value) postQuestion,
    required TResult Function(_ChangeMode value) changeMode,
    required TResult Function(_ConnectToChatAgentWebSocket value)
        connectToChatAgentWebSocket,
    required TResult Function(_DisconnectToChatAgentWebSocket value)
        disconnectToChatAgentWebSocket,
    required TResult Function(_AddEventToChatAgentWebSocket value)
        addEventToChatAgentWebSocket,
  }) {
    return connectToChatAgentWebSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostQuestion value)? postQuestion,
    TResult? Function(_ChangeMode value)? changeMode,
    TResult? Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult? Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult? Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
  }) {
    return connectToChatAgentWebSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostQuestion value)? postQuestion,
    TResult Function(_ChangeMode value)? changeMode,
    TResult Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (connectToChatAgentWebSocket != null) {
      return connectToChatAgentWebSocket(this);
    }
    return orElse();
  }
}

abstract class _ConnectToChatAgentWebSocket implements ChatBotEvent {
  const factory _ConnectToChatAgentWebSocket() =
      _$ConnectToChatAgentWebSocketImpl;
}

/// @nodoc
abstract class _$$DisconnectToChatAgentWebSocketImplCopyWith<$Res> {
  factory _$$DisconnectToChatAgentWebSocketImplCopyWith(
          _$DisconnectToChatAgentWebSocketImpl value,
          $Res Function(_$DisconnectToChatAgentWebSocketImpl) then) =
      __$$DisconnectToChatAgentWebSocketImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectToChatAgentWebSocketImplCopyWithImpl<$Res>
    extends _$ChatBotEventCopyWithImpl<$Res,
        _$DisconnectToChatAgentWebSocketImpl>
    implements _$$DisconnectToChatAgentWebSocketImplCopyWith<$Res> {
  __$$DisconnectToChatAgentWebSocketImplCopyWithImpl(
      _$DisconnectToChatAgentWebSocketImpl _value,
      $Res Function(_$DisconnectToChatAgentWebSocketImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisconnectToChatAgentWebSocketImpl
    implements _DisconnectToChatAgentWebSocket {
  const _$DisconnectToChatAgentWebSocketImpl();

  @override
  String toString() {
    return 'ChatBotEvent.disconnectToChatAgentWebSocket()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisconnectToChatAgentWebSocketImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) started,
    required TResult Function(String? textQuestion) postQuestion,
    required TResult Function() changeMode,
    required TResult Function() connectToChatAgentWebSocket,
    required TResult Function() disconnectToChatAgentWebSocket,
    required TResult Function(String? textQuestion)
        addEventToChatAgentWebSocket,
  }) {
    return disconnectToChatAgentWebSocket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? started,
    TResult? Function(String? textQuestion)? postQuestion,
    TResult? Function()? changeMode,
    TResult? Function()? connectToChatAgentWebSocket,
    TResult? Function()? disconnectToChatAgentWebSocket,
    TResult? Function(String? textQuestion)? addEventToChatAgentWebSocket,
  }) {
    return disconnectToChatAgentWebSocket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? started,
    TResult Function(String? textQuestion)? postQuestion,
    TResult Function()? changeMode,
    TResult Function()? connectToChatAgentWebSocket,
    TResult Function()? disconnectToChatAgentWebSocket,
    TResult Function(String? textQuestion)? addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (disconnectToChatAgentWebSocket != null) {
      return disconnectToChatAgentWebSocket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostQuestion value) postQuestion,
    required TResult Function(_ChangeMode value) changeMode,
    required TResult Function(_ConnectToChatAgentWebSocket value)
        connectToChatAgentWebSocket,
    required TResult Function(_DisconnectToChatAgentWebSocket value)
        disconnectToChatAgentWebSocket,
    required TResult Function(_AddEventToChatAgentWebSocket value)
        addEventToChatAgentWebSocket,
  }) {
    return disconnectToChatAgentWebSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostQuestion value)? postQuestion,
    TResult? Function(_ChangeMode value)? changeMode,
    TResult? Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult? Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult? Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
  }) {
    return disconnectToChatAgentWebSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostQuestion value)? postQuestion,
    TResult Function(_ChangeMode value)? changeMode,
    TResult Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (disconnectToChatAgentWebSocket != null) {
      return disconnectToChatAgentWebSocket(this);
    }
    return orElse();
  }
}

abstract class _DisconnectToChatAgentWebSocket implements ChatBotEvent {
  const factory _DisconnectToChatAgentWebSocket() =
      _$DisconnectToChatAgentWebSocketImpl;
}

/// @nodoc
abstract class _$$AddEventToChatAgentWebSocketImplCopyWith<$Res> {
  factory _$$AddEventToChatAgentWebSocketImplCopyWith(
          _$AddEventToChatAgentWebSocketImpl value,
          $Res Function(_$AddEventToChatAgentWebSocketImpl) then) =
      __$$AddEventToChatAgentWebSocketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? textQuestion});
}

/// @nodoc
class __$$AddEventToChatAgentWebSocketImplCopyWithImpl<$Res>
    extends _$ChatBotEventCopyWithImpl<$Res, _$AddEventToChatAgentWebSocketImpl>
    implements _$$AddEventToChatAgentWebSocketImplCopyWith<$Res> {
  __$$AddEventToChatAgentWebSocketImplCopyWithImpl(
      _$AddEventToChatAgentWebSocketImpl _value,
      $Res Function(_$AddEventToChatAgentWebSocketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textQuestion = freezed,
  }) {
    return _then(_$AddEventToChatAgentWebSocketImpl(
      textQuestion: freezed == textQuestion
          ? _value.textQuestion
          : textQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddEventToChatAgentWebSocketImpl
    implements _AddEventToChatAgentWebSocket {
  const _$AddEventToChatAgentWebSocketImpl({this.textQuestion});

  @override
  final String? textQuestion;

  @override
  String toString() {
    return 'ChatBotEvent.addEventToChatAgentWebSocket(textQuestion: $textQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventToChatAgentWebSocketImpl &&
            (identical(other.textQuestion, textQuestion) ||
                other.textQuestion == textQuestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventToChatAgentWebSocketImplCopyWith<
          _$AddEventToChatAgentWebSocketImpl>
      get copyWith => __$$AddEventToChatAgentWebSocketImplCopyWithImpl<
          _$AddEventToChatAgentWebSocketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) started,
    required TResult Function(String? textQuestion) postQuestion,
    required TResult Function() changeMode,
    required TResult Function() connectToChatAgentWebSocket,
    required TResult Function() disconnectToChatAgentWebSocket,
    required TResult Function(String? textQuestion)
        addEventToChatAgentWebSocket,
  }) {
    return addEventToChatAgentWebSocket(textQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? started,
    TResult? Function(String? textQuestion)? postQuestion,
    TResult? Function()? changeMode,
    TResult? Function()? connectToChatAgentWebSocket,
    TResult? Function()? disconnectToChatAgentWebSocket,
    TResult? Function(String? textQuestion)? addEventToChatAgentWebSocket,
  }) {
    return addEventToChatAgentWebSocket?.call(textQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? started,
    TResult Function(String? textQuestion)? postQuestion,
    TResult Function()? changeMode,
    TResult Function()? connectToChatAgentWebSocket,
    TResult Function()? disconnectToChatAgentWebSocket,
    TResult Function(String? textQuestion)? addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (addEventToChatAgentWebSocket != null) {
      return addEventToChatAgentWebSocket(textQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PostQuestion value) postQuestion,
    required TResult Function(_ChangeMode value) changeMode,
    required TResult Function(_ConnectToChatAgentWebSocket value)
        connectToChatAgentWebSocket,
    required TResult Function(_DisconnectToChatAgentWebSocket value)
        disconnectToChatAgentWebSocket,
    required TResult Function(_AddEventToChatAgentWebSocket value)
        addEventToChatAgentWebSocket,
  }) {
    return addEventToChatAgentWebSocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PostQuestion value)? postQuestion,
    TResult? Function(_ChangeMode value)? changeMode,
    TResult? Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult? Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult? Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
  }) {
    return addEventToChatAgentWebSocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PostQuestion value)? postQuestion,
    TResult Function(_ChangeMode value)? changeMode,
    TResult Function(_ConnectToChatAgentWebSocket value)?
        connectToChatAgentWebSocket,
    TResult Function(_DisconnectToChatAgentWebSocket value)?
        disconnectToChatAgentWebSocket,
    TResult Function(_AddEventToChatAgentWebSocket value)?
        addEventToChatAgentWebSocket,
    required TResult orElse(),
  }) {
    if (addEventToChatAgentWebSocket != null) {
      return addEventToChatAgentWebSocket(this);
    }
    return orElse();
  }
}

abstract class _AddEventToChatAgentWebSocket implements ChatBotEvent {
  const factory _AddEventToChatAgentWebSocket({final String? textQuestion}) =
      _$AddEventToChatAgentWebSocketImpl;

  String? get textQuestion;
  @JsonKey(ignore: true)
  _$$AddEventToChatAgentWebSocketImplCopyWith<
          _$AddEventToChatAgentWebSocketImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatBotState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  ChatBotMode get chatBotMode => throw _privateConstructorUsedError;
  List<IChatConversation> get chatConversation =>
      throw _privateConstructorUsedError;
  List<IChatConversation> get suggestedQuestions =>
      throw _privateConstructorUsedError;
  FormGroup? get formGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatBotStateCopyWith<ChatBotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBotStateCopyWith<$Res> {
  factory $ChatBotStateCopyWith(
          ChatBotState value, $Res Function(ChatBotState) then) =
      _$ChatBotStateCopyWithImpl<$Res, ChatBotState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFetching,
      String chatId,
      ChatBotMode chatBotMode,
      List<IChatConversation> chatConversation,
      List<IChatConversation> suggestedQuestions,
      FormGroup? formGroup});
}

/// @nodoc
class _$ChatBotStateCopyWithImpl<$Res, $Val extends ChatBotState>
    implements $ChatBotStateCopyWith<$Res> {
  _$ChatBotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFetching = null,
    Object? chatId = null,
    Object? chatBotMode = null,
    Object? chatConversation = null,
    Object? suggestedQuestions = null,
    Object? formGroup = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      chatBotMode: null == chatBotMode
          ? _value.chatBotMode
          : chatBotMode // ignore: cast_nullable_to_non_nullable
              as ChatBotMode,
      chatConversation: null == chatConversation
          ? _value.chatConversation
          : chatConversation // ignore: cast_nullable_to_non_nullable
              as List<IChatConversation>,
      suggestedQuestions: null == suggestedQuestions
          ? _value.suggestedQuestions
          : suggestedQuestions // ignore: cast_nullable_to_non_nullable
              as List<IChatConversation>,
      formGroup: freezed == formGroup
          ? _value.formGroup
          : formGroup // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatBotStateImplCopyWith<$Res>
    implements $ChatBotStateCopyWith<$Res> {
  factory _$$ChatBotStateImplCopyWith(
          _$ChatBotStateImpl value, $Res Function(_$ChatBotStateImpl) then) =
      __$$ChatBotStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFetching,
      String chatId,
      ChatBotMode chatBotMode,
      List<IChatConversation> chatConversation,
      List<IChatConversation> suggestedQuestions,
      FormGroup? formGroup});
}

/// @nodoc
class __$$ChatBotStateImplCopyWithImpl<$Res>
    extends _$ChatBotStateCopyWithImpl<$Res, _$ChatBotStateImpl>
    implements _$$ChatBotStateImplCopyWith<$Res> {
  __$$ChatBotStateImplCopyWithImpl(
      _$ChatBotStateImpl _value, $Res Function(_$ChatBotStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFetching = null,
    Object? chatId = null,
    Object? chatBotMode = null,
    Object? chatConversation = null,
    Object? suggestedQuestions = null,
    Object? formGroup = freezed,
  }) {
    return _then(_$ChatBotStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      chatBotMode: null == chatBotMode
          ? _value.chatBotMode
          : chatBotMode // ignore: cast_nullable_to_non_nullable
              as ChatBotMode,
      chatConversation: null == chatConversation
          ? _value._chatConversation
          : chatConversation // ignore: cast_nullable_to_non_nullable
              as List<IChatConversation>,
      suggestedQuestions: null == suggestedQuestions
          ? _value._suggestedQuestions
          : suggestedQuestions // ignore: cast_nullable_to_non_nullable
              as List<IChatConversation>,
      formGroup: freezed == formGroup
          ? _value.formGroup
          : formGroup // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
    ));
  }
}

/// @nodoc

class _$ChatBotStateImpl implements _ChatBotState {
  const _$ChatBotStateImpl(
      {required this.isLoading,
      required this.isFetching,
      required this.chatId,
      required this.chatBotMode,
      required final List<IChatConversation> chatConversation,
      required final List<IChatConversation> suggestedQuestions,
      this.formGroup})
      : _chatConversation = chatConversation,
        _suggestedQuestions = suggestedQuestions;

  @override
  final bool isLoading;
  @override
  final bool isFetching;
  @override
  final String chatId;
  @override
  final ChatBotMode chatBotMode;
  final List<IChatConversation> _chatConversation;
  @override
  List<IChatConversation> get chatConversation {
    if (_chatConversation is EqualUnmodifiableListView)
      return _chatConversation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatConversation);
  }

  final List<IChatConversation> _suggestedQuestions;
  @override
  List<IChatConversation> get suggestedQuestions {
    if (_suggestedQuestions is EqualUnmodifiableListView)
      return _suggestedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedQuestions);
  }

  @override
  final FormGroup? formGroup;

  @override
  String toString() {
    return 'ChatBotState(isLoading: $isLoading, isFetching: $isFetching, chatId: $chatId, chatBotMode: $chatBotMode, chatConversation: $chatConversation, suggestedQuestions: $suggestedQuestions, formGroup: $formGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBotStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.chatBotMode, chatBotMode) ||
                other.chatBotMode == chatBotMode) &&
            const DeepCollectionEquality()
                .equals(other._chatConversation, _chatConversation) &&
            const DeepCollectionEquality()
                .equals(other._suggestedQuestions, _suggestedQuestions) &&
            (identical(other.formGroup, formGroup) ||
                other.formGroup == formGroup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isFetching,
      chatId,
      chatBotMode,
      const DeepCollectionEquality().hash(_chatConversation),
      const DeepCollectionEquality().hash(_suggestedQuestions),
      formGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBotStateImplCopyWith<_$ChatBotStateImpl> get copyWith =>
      __$$ChatBotStateImplCopyWithImpl<_$ChatBotStateImpl>(this, _$identity);
}

abstract class _ChatBotState implements ChatBotState {
  const factory _ChatBotState(
      {required final bool isLoading,
      required final bool isFetching,
      required final String chatId,
      required final ChatBotMode chatBotMode,
      required final List<IChatConversation> chatConversation,
      required final List<IChatConversation> suggestedQuestions,
      final FormGroup? formGroup}) = _$ChatBotStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFetching;
  @override
  String get chatId;
  @override
  ChatBotMode get chatBotMode;
  @override
  List<IChatConversation> get chatConversation;
  @override
  List<IChatConversation> get suggestedQuestions;
  @override
  FormGroup? get formGroup;
  @override
  @JsonKey(ignore: true)
  _$$ChatBotStateImplCopyWith<_$ChatBotStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
