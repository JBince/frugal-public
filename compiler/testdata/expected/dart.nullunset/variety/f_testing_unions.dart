// Autogenerated by Frugal Compiler (3.14.14)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

// ignore_for_file: unused_import
// ignore_for_file: unused_field
import 'dart:typed_data' show Uint8List;

import 'package:collection/collection.dart';
import 'package:thrift/thrift.dart' as thrift;
import 'package:variety/variety.dart' as t_variety;
import 'package:actual_base_dart/actual_base_dart.dart' as t_actual_base_dart;
import 'package:intermediate_include/intermediate_include.dart' as t_intermediate_include;
import 'package:validStructs/validStructs.dart' as t_validStructs;
import 'package:ValidTypes/ValidTypes.dart' as t_ValidTypes;
import 'package:subdir_include_ns/subdir_include_ns.dart' as t_subdir_include_ns;

class TestingUnions implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('TestingUnions');
  static final thrift.TField _AN_ID_FIELD_DESC = thrift.TField('AnID', thrift.TType.I64, 1);
  static final thrift.TField _A_STRING_FIELD_DESC = thrift.TField('aString', thrift.TType.STRING, 2);
  static final thrift.TField _SOMEOTHERTHING_FIELD_DESC = thrift.TField('someotherthing', thrift.TType.I32, 3);
  static final thrift.TField _AN_INT16_FIELD_DESC = thrift.TField('AnInt16', thrift.TType.I16, 4);
  static final thrift.TField _REQUESTS_FIELD_DESC = thrift.TField('Requests', thrift.TType.MAP, 5);
  static final thrift.TField _BIN_FIELD_IN_UNION_FIELD_DESC = thrift.TField('bin_field_in_union', thrift.TType.STRING, 6);
  static final thrift.TField _DEPR_FIELD_DESC = thrift.TField('depr', thrift.TType.BOOL, 7);

  int anID;
  static const int ANID = 1;
  String aString;
  static const int ASTRING = 2;
  int someotherthing;
  static const int SOMEOTHERTHING = 3;
  int anInt16;
  static const int ANINT16 = 4;
  Map<int, String> requests;
  static const int REQUESTS = 5;
  Uint8List bin_field_in_union;
  static const int BIN_FIELD_IN_UNION = 6;
  /// Deprecated: use something else
  @deprecated
  bool depr;
  static const int DEPR = 7;


  bool isSetAnID() => this.anID != null;

  unsetAnID() {
    this.anID = null;
  }

  bool isSetAString() => this.aString != null;

  unsetAString() {
    this.aString = null;
  }

  bool isSetSomeotherthing() => this.someotherthing != null;

  unsetSomeotherthing() {
    this.someotherthing = null;
  }

  bool isSetAnInt16() => this.anInt16 != null;

  unsetAnInt16() {
    this.anInt16 = null;
  }

  bool isSetRequests() => this.requests != null;

  unsetRequests() {
    this.requests = null;
  }

  bool isSetBin_field_in_union() => this.bin_field_in_union != null;

  unsetBin_field_in_union() {
    this.bin_field_in_union = null;
  }

  @deprecated  bool isSetDepr() => this.depr != null;

  unsetDepr() {
    // ignore: deprecated_member_use
    this.depr = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ANID:
        return this.anID;
      case ASTRING:
        return this.aString;
      case SOMEOTHERTHING:
        return this.someotherthing;
      case ANINT16:
        return this.anInt16;
      case REQUESTS:
        return this.requests;
      case BIN_FIELD_IN_UNION:
        return this.bin_field_in_union;
      case DEPR:
        // ignore: deprecated_member_use
        return this.depr;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ANID:
        if (value == null) {
          unsetAnID();
        } else {
          this.anID = value as int;
        }
        break;

      case ASTRING:
        if (value == null) {
          unsetAString();
        } else {
          this.aString = value as String;
        }
        break;

      case SOMEOTHERTHING:
        if (value == null) {
          unsetSomeotherthing();
        } else {
          this.someotherthing = value as int;
        }
        break;

      case ANINT16:
        if (value == null) {
          unsetAnInt16();
        } else {
          this.anInt16 = value as int;
        }
        break;

      case REQUESTS:
        if (value == null) {
          unsetRequests();
        } else {
          this.requests = value as Map<int, String>;
        }
        break;

      case BIN_FIELD_IN_UNION:
        if (value == null) {
          unsetBin_field_in_union();
        } else {
          this.bin_field_in_union = value as Uint8List;
        }
        break;

      case DEPR:
        if (value == null) {
          unsetDepr();
        } else {
          // ignore: deprecated_member_use
          this.depr = value as bool;
        }
        break;

      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  @override
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ANID:
        return isSetAnID();
      case ASTRING:
        return isSetAString();
      case SOMEOTHERTHING:
        return isSetSomeotherthing();
      case ANINT16:
        return isSetAnInt16();
      case REQUESTS:
        return isSetRequests();
      case BIN_FIELD_IN_UNION:
        return isSetBin_field_in_union();
      case DEPR:
        // ignore: deprecated_member_use
        return isSetDepr();
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  read(thrift.TProtocol iprot) {
    iprot.readStructBegin();
    for (thrift.TField field = iprot.readFieldBegin();
        field.type != thrift.TType.STOP;
        field = iprot.readFieldBegin()) {
      switch (field.id) {
        case ANID:
          if (field.type == thrift.TType.I64) {
            this.anID = iprot.readI64();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ASTRING:
          if (field.type == thrift.TType.STRING) {
            this.aString = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SOMEOTHERTHING:
          if (field.type == thrift.TType.I32) {
            this.someotherthing = iprot.readI32();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ANINT16:
          if (field.type == thrift.TType.I16) {
            this.anInt16 = iprot.readI16();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REQUESTS:
          if (field.type == thrift.TType.MAP) {
            thrift.TMap elem63 = iprot.readMapBegin();
            this.requests = Map<int, String>();
            for(int elem65 = 0; elem65 < elem63.length; ++elem65) {
              int elem66 = iprot.readI32();
              String elem64 = iprot.readString();
              this.requests[elem66] = elem64;
            }
            iprot.readMapEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BIN_FIELD_IN_UNION:
          if (field.type == thrift.TType.STRING) {
            this.bin_field_in_union = iprot.readBinary();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DEPR:
          if (field.type == thrift.TType.BOOL) {
            // ignore: deprecated_member_use
            this.depr = iprot.readBool();
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
    if (isSetAnID()) {
      oprot.writeFieldBegin(_AN_ID_FIELD_DESC);
      oprot.writeI64(this.anID);
      oprot.writeFieldEnd();
    }
    if (isSetAString()) {
      oprot.writeFieldBegin(_A_STRING_FIELD_DESC);
      oprot.writeString(this.aString);
      oprot.writeFieldEnd();
    }
    if (isSetSomeotherthing()) {
      oprot.writeFieldBegin(_SOMEOTHERTHING_FIELD_DESC);
      oprot.writeI32(this.someotherthing);
      oprot.writeFieldEnd();
    }
    if (isSetAnInt16()) {
      oprot.writeFieldBegin(_AN_INT16_FIELD_DESC);
      oprot.writeI16(this.anInt16);
      oprot.writeFieldEnd();
    }
    if (isSetRequests()) {
      oprot.writeFieldBegin(_REQUESTS_FIELD_DESC);
      oprot.writeMapBegin(thrift.TMap(thrift.TType.I32, thrift.TType.STRING, this.requests.length));
      for(var elem67 in this.requests.keys) {
        oprot.writeI32(elem67);
        oprot.writeString(requests[elem67]);
      }
      oprot.writeMapEnd();
      oprot.writeFieldEnd();
    }
    if (isSetBin_field_in_union()) {
      oprot.writeFieldBegin(_BIN_FIELD_IN_UNION_FIELD_DESC);
      oprot.writeBinary(this.bin_field_in_union);
      oprot.writeFieldEnd();
    }
    // ignore: deprecated_member_use
    if (isSetDepr()) {
      oprot.writeFieldBegin(_DEPR_FIELD_DESC);
      // ignore: deprecated_member_use
      oprot.writeBool(this.depr);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('TestingUnions(');

    if (isSetAnID()) {
      ret.write('anID:');
      ret.write(this.anID);
    }

    if (isSetAString()) {
      ret.write(', ');
      ret.write('aString:');
      if (this.aString == null) {
        ret.write('null');
      } else {
        ret.write(this.aString);
      }
    }

    if (isSetSomeotherthing()) {
      ret.write(', ');
      ret.write('someotherthing:');
      ret.write(this.someotherthing);
    }

    if (isSetAnInt16()) {
      ret.write(', ');
      ret.write('anInt16:');
      ret.write(this.anInt16);
    }

    if (isSetRequests()) {
      ret.write(', ');
      ret.write('requests:');
      if (this.requests == null) {
        ret.write('null');
      } else {
        ret.write(this.requests);
      }
    }

    if (isSetBin_field_in_union()) {
      ret.write(', ');
      ret.write('bin_field_in_union:');
      if (this.bin_field_in_union == null) {
        ret.write('null');
      } else {
        ret.write('BINARY');
      }
    }

    if (isSetDepr()) {
      ret.write(', ');
      ret.write('depr:');
      // ignore: deprecated_member_use
      ret.write(this.depr);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is TestingUnions) {
      return this.anID == o.anID &&
        this.aString == o.aString &&
        this.someotherthing == o.someotherthing &&
        this.anInt16 == o.anInt16 &&
        DeepCollectionEquality().equals(this.requests, o.requests) &&
        this.bin_field_in_union == o.bin_field_in_union &&
        // ignore: deprecated_member_use
        this.depr == o.depr;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.anID.hashCode;
    value = (value * 31) ^ this.aString.hashCode;
    value = (value * 31) ^ this.someotherthing.hashCode;
    value = (value * 31) ^ this.anInt16.hashCode;
    value = (value * 31) ^ DeepCollectionEquality().hash(this.requests);
    value = (value * 31) ^ this.bin_field_in_union.hashCode;
    // ignore: deprecated_member_use
    value = (value * 31) ^ this.depr.hashCode;
    return value;
  }

  TestingUnions clone({
    int anID,
    String aString,
    int someotherthing,
    int anInt16,
    Map<int, String> requests,
    Uint8List bin_field_in_union,
    // ignore: deprecated_member_use
    bool depr,
  }) {
    return TestingUnions()
      ..anID = anID ?? this.anID
      ..aString = aString ?? this.aString
      ..someotherthing = someotherthing ?? this.someotherthing
      ..anInt16 = anInt16 ?? this.anInt16
      ..requests = requests ?? this.requests
      ..bin_field_in_union = bin_field_in_union ?? this.bin_field_in_union
      // ignore: deprecated_member_use
      ..depr = depr ?? this.depr;
  }

  validate() {
    // check exactly one field is set
    int setFields = 0;
    if (isSetAnID()) {
      setFields++;
    }
    if (isSetAString()) {
      setFields++;
    }
    if (isSetSomeotherthing()) {
      setFields++;
    }
    if (isSetAnInt16()) {
      setFields++;
    }
    if (isSetRequests()) {
      setFields++;
    }
    if (isSetBin_field_in_union()) {
      setFields++;
    }
    if (isSetDepr()) {
      setFields++;
    }
    if (setFields != 1) {
      throw thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, 'The union did not have exactly one field set, $setFields were set');
    }
  }
}
