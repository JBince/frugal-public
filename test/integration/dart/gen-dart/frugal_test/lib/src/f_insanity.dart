// Autogenerated by Frugal Compiler (3.16.12)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

// ignore_for_file: unused_import
// ignore_for_file: unused_field
import 'dart:typed_data' show Uint8List;

import 'package:collection/collection.dart';
import 'package:thrift/thrift.dart' as thrift;
import 'package:frugal_test/frugal_test.dart' as t_frugal_test;

class Insanity implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('Insanity');
  static final thrift.TField _USER_MAP_FIELD_DESC = thrift.TField('userMap', thrift.TType.MAP, 1);
  static final thrift.TField _XTRUCTS_FIELD_DESC = thrift.TField('xtructs', thrift.TType.LIST, 2);

  Map<int, int> _userMap;
  static const int USERMAP = 1;
  List<t_frugal_test.Xtruct> _xtructs;
  static const int XTRUCTS = 2;


  Map<int, int> get userMap => this._userMap;

  set userMap(Map<int, int> userMap) {
    this._userMap = userMap;
  }

  bool isSetUserMap() => this.userMap != null;

  unsetUserMap() {
    this.userMap = null;
  }

  List<t_frugal_test.Xtruct> get xtructs => this._xtructs;

  set xtructs(List<t_frugal_test.Xtruct> xtructs) {
    this._xtructs = xtructs;
  }

  bool isSetXtructs() => this.xtructs != null;

  unsetXtructs() {
    this.xtructs = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case USERMAP:
        return this.userMap;
      case XTRUCTS:
        return this.xtructs;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case USERMAP:
        if (value == null) {
          unsetUserMap();
        } else {
          this.userMap = value as Map<int, int>;
        }
        break;

      case XTRUCTS:
        if (value == null) {
          unsetXtructs();
        } else {
          this.xtructs = value as List<t_frugal_test.Xtruct>;
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
      case USERMAP:
        return isSetUserMap();
      case XTRUCTS:
        return isSetXtructs();
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
        case USERMAP:
          if (field.type == thrift.TType.MAP) {
            thrift.TMap elem0 = iprot.readMapBegin();
            this.userMap = Map<int, int>();
            for(int elem2 = 0; elem2 < elem0.length; ++elem2) {
              int elem3 = t_frugal_test.deserializeNumberz(iprot.readI32());
              int elem1 = iprot.readI64();
              this.userMap[elem3] = elem1;
            }
            iprot.readMapEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case XTRUCTS:
          if (field.type == thrift.TType.LIST) {
            thrift.TList elem4 = iprot.readListBegin();
            this.xtructs = List<t_frugal_test.Xtruct>();
            for(int elem6 = 0; elem6 < elem4.length; ++elem6) {
              t_frugal_test.Xtruct elem5 = t_frugal_test.Xtruct();
              elem5.read(iprot);
              this.xtructs.add(elem5);
            }
            iprot.readListEnd();
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
    if (this.userMap != null) {
      oprot.writeFieldBegin(_USER_MAP_FIELD_DESC);
      oprot.writeMapBegin(thrift.TMap(thrift.TType.I32, thrift.TType.I64, this.userMap.length));
      for(var elem7 in this.userMap.keys) {
    oprot.writeI32(t_frugal_test.serializeNumberz(elem7));
        oprot.writeI64(userMap[elem7]);
      }
      oprot.writeMapEnd();
      oprot.writeFieldEnd();
    }
    if (this.xtructs != null) {
      oprot.writeFieldBegin(_XTRUCTS_FIELD_DESC);
      oprot.writeListBegin(thrift.TList(thrift.TType.STRUCT, this.xtructs.length));
      for(var elem8 in this.xtructs) {
        elem8.write(oprot);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('Insanity(');

    ret.write('userMap:');
    if (this.userMap == null) {
      ret.write('null');
    } else {
      ret.write(this.userMap);
    }

    ret.write(', ');
    ret.write('xtructs:');
    if (this.xtructs == null) {
      ret.write('null');
    } else {
      ret.write(this.xtructs);
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is Insanity) {
      return DeepCollectionEquality().equals(this.userMap, o.userMap) &&
        DeepCollectionEquality().equals(this.xtructs, o.xtructs);
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ DeepCollectionEquality().hash(this.userMap);
    value = (value * 31) ^ DeepCollectionEquality().hash(this.xtructs);
    return value;
  }

  Insanity clone({
    Map<int, int> userMap,
    List<t_frugal_test.Xtruct> xtructs,
  }) {
    return Insanity()
      ..userMap = userMap ?? this.userMap
      ..xtructs = xtructs ?? this.xtructs;
  }

  validate() {
  }
}
