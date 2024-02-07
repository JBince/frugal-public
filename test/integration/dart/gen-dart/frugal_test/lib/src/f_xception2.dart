// Autogenerated by Frugal Compiler (3.17.7)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

// ignore_for_file: unused_import
// ignore_for_file: unused_field
import 'dart:typed_data' show Uint8List;

import 'package:collection/collection.dart';
import 'package:thrift/thrift.dart' as thrift;
import 'package:frugal_test/frugal_test.dart' as t_frugal_test;

class Xception2 extends Error implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('Xception2');
  static final thrift.TField _ERROR_CODE_FIELD_DESC = thrift.TField('errorCode', thrift.TType.I32, 1);
  static final thrift.TField _STRUCT_THING_FIELD_DESC = thrift.TField('struct_thing', thrift.TType.STRUCT, 2);

  int _errorCode = 0;
  static const int ERRORCODE = 1;
  t_frugal_test.Xtruct _struct_thing;
  static const int STRUCT_THING = 2;

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

  t_frugal_test.Xtruct get struct_thing => this._struct_thing;

  set struct_thing(t_frugal_test.Xtruct struct_thing) {
    this._struct_thing = struct_thing;
  }

  bool isSetStruct_thing() => this.struct_thing != null;

  unsetStruct_thing() {
    this.struct_thing = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ERRORCODE:
        return this.errorCode;
      case STRUCT_THING:
        return this.struct_thing;
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

      case STRUCT_THING:
        this.struct_thing = value as t_frugal_test.Xtruct;
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
        case STRUCT_THING:
          if (field.type == thrift.TType.STRUCT) {
            final elem27 = t_frugal_test.Xtruct();
            this.struct_thing = elem27;
            elem27.read(iprot);
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
    final elem28 = errorCode;
    oprot.writeFieldBegin(_ERROR_CODE_FIELD_DESC);
    oprot.writeI32(elem28);
    oprot.writeFieldEnd();
    final elem29 = struct_thing;
    if (elem29 != null) {
      oprot.writeFieldBegin(_STRUCT_THING_FIELD_DESC);
      elem29.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('Xception2(');

    ret.write('errorCode:');
    ret.write(this.errorCode);

    ret.write(', ');
    ret.write('struct_thing:');
    if (this.struct_thing == null) {
      ret.write('null');
    } else {
      ret.write(this.struct_thing);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is Xception2) {
      return this.errorCode == o.errorCode &&
        this.struct_thing == o.struct_thing;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.errorCode.hashCode;
    value = (value * 31) ^ this.struct_thing.hashCode;
    return value;
  }

  Xception2 clone({
    int errorCode,
    t_frugal_test.Xtruct struct_thing,
  }) {
    return Xception2()
      ..errorCode = errorCode ?? this.errorCode
      ..struct_thing = struct_thing ?? this.struct_thing;
  }

  validate() {
  }
}
