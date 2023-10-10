// Autogenerated by Frugal Compiler (3.17.4)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

// ignore_for_file: unused_import
// ignore_for_file: unused_field
import 'dart:typed_data' show Uint8List;

import 'package:collection/collection.dart';
import 'package:thrift/thrift.dart' as thrift;
import 'package:frugal_test/frugal_test.dart' as t_frugal_test;

class Xception extends Error implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('Xception');
  static final thrift.TField _ERROR_CODE_FIELD_DESC = thrift.TField('errorCode', thrift.TType.I32, 1);
  static final thrift.TField _MESSAGE_FIELD_DESC = thrift.TField('message', thrift.TType.STRING, 2);

  int _errorCode = 0;
  static const int ERRORCODE = 1;
  String _message;
  static const int MESSAGE = 2;

  bool __isset_errorCode = false;

  int get errorCode => this._errorCode;

  set errorCode(int errorCode) {
    this._errorCode = errorCode;
    this.__isset_errorCode = true;
  }

  bool isSetErrorCode() => this.__isset_errorCode;

  unsetErrorCode() {
    this.__isset_errorCode = false;
  }

  String get message => this._message;

  set message(String message) {
    this._message = message;
  }

  bool isSetMessage() => this.message != null;

  unsetMessage() {
    this.message = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ERRORCODE:
        return this.errorCode;
      case MESSAGE:
        return this.message;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ERRORCODE:
        if (value == null) {
          unsetErrorCode();
        } else {
          this.errorCode = value as int;
        }
        break;

      case MESSAGE:
        this.message = value as String;
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ERRORCODE:
        return isSetErrorCode();
    }
    return getFieldValue(fieldID) != null;
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case ERRORCODE:
          if (field.type == thrift.TType.I32) {
            this.errorCode = iprot.readI32();
            this.__isset_errorCode = true;
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case MESSAGE:
          if (field.type == thrift.TType.STRING) {
            this.message = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          thrift.TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    validate();
  }

  @override
  write(thrift.TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    final elem25 = errorCode;
    oprot.writeFieldBegin(_ERROR_CODE_FIELD_DESC);
    oprot.writeI32(elem25);
    oprot.writeFieldEnd();
    final elem26 = message;
    if (elem26 != null) {
      oprot.writeFieldBegin(_MESSAGE_FIELD_DESC);
      oprot.writeString(elem26);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('Xception(');

    ret.write('errorCode:');
    ret.write(this.errorCode);

    ret.write(', ');
    ret.write('message:');
    if (this.message == null) {
      ret.write('null');
    } else {
      ret.write(this.message);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is Xception) {
      return this.errorCode == o.errorCode &&
        this.message == o.message;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.errorCode.hashCode;
    value = (value * 31) ^ this.message.hashCode;
    return value;
  }

  Xception clone({
    int errorCode,
    String message,
  }) {
    return Xception()
      ..errorCode = errorCode ?? this.errorCode
      ..message = message ?? this.message;
  }

  validate() {
  }
}
