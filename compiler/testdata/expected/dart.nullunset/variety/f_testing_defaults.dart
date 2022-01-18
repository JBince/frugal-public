// Autogenerated by Frugal Compiler (3.14.13)
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

class TestingDefaults implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('TestingDefaults');
  static final thrift.TField _I_D2_FIELD_DESC = thrift.TField('ID2', thrift.TType.I64, 1);
  static final thrift.TField _EV1_FIELD_DESC = thrift.TField('ev1', thrift.TType.STRUCT, 2);
  static final thrift.TField _EV2_FIELD_DESC = thrift.TField('ev2', thrift.TType.STRUCT, 3);
  static final thrift.TField _ID_FIELD_DESC = thrift.TField('ID', thrift.TType.I64, 4);
  static final thrift.TField _THING_FIELD_DESC = thrift.TField('thing', thrift.TType.STRING, 5);
  static final thrift.TField _THING2_FIELD_DESC = thrift.TField('thing2', thrift.TType.STRING, 6);
  static final thrift.TField _LISTFIELD_FIELD_DESC = thrift.TField('listfield', thrift.TType.LIST, 7);
  static final thrift.TField _I_D3_FIELD_DESC = thrift.TField('ID3', thrift.TType.I64, 8);
  static final thrift.TField _BIN_FIELD_FIELD_DESC = thrift.TField('bin_field', thrift.TType.STRING, 9);
  static final thrift.TField _BIN_FIELD2_FIELD_DESC = thrift.TField('bin_field2', thrift.TType.STRING, 10);
  static final thrift.TField _BIN_FIELD3_FIELD_DESC = thrift.TField('bin_field3', thrift.TType.STRING, 11);
  static final thrift.TField _BIN_FIELD4_FIELD_DESC = thrift.TField('bin_field4', thrift.TType.STRING, 12);
  static final thrift.TField _LIST2_FIELD_DESC = thrift.TField('list2', thrift.TType.LIST, 13);
  static final thrift.TField _LIST3_FIELD_DESC = thrift.TField('list3', thrift.TType.LIST, 14);
  static final thrift.TField _LIST4_FIELD_DESC = thrift.TField('list4', thrift.TType.LIST, 15);
  static final thrift.TField _A_MAP_FIELD_DESC = thrift.TField('a_map', thrift.TType.MAP, 16);
  static final thrift.TField _STATUS_FIELD_DESC = thrift.TField('status', thrift.TType.I32, 17);
  static final thrift.TField _BASE_STATUS_FIELD_DESC = thrift.TField('base_status', thrift.TType.I32, 18);

  int iD2 = t_variety.VarietyConstants.DEFAULT_ID;
  static const int ID2 = 1;
  t_variety.Event ev1 = t_variety.Event()
      ..iD = t_variety.VarietyConstants.DEFAULT_ID
      ..message = "a message";
  static const int EV1 = 2;
  t_variety.Event ev2 = t_variety.Event()
      ..iD = 5
      ..message = "a message2";
  static const int EV2 = 3;
  int iD = -2;
  static const int ID = 4;
  String thing = "a constant";
  static const int THING = 5;
  String thing2 = "another constant";
  static const int THING2 = 6;
  List<int> listfield = [
      1,
      2,
      3,
      4,
      5,
    ];
  static const int LISTFIELD = 7;
  int iD3 = t_variety.VarietyConstants.other_default;
  static const int ID3 = 8;
  Uint8List bin_field;
  static const int BIN_FIELD = 9;
  Uint8List bin_field2;
  static const int BIN_FIELD2 = 10;
  Uint8List bin_field3;
  static const int BIN_FIELD3 = 11;
  Uint8List bin_field4 = t_variety.VarietyConstants.bin_const;
  static const int BIN_FIELD4 = 12;
  List<int> list2 = [
      1,
      3,
      4,
      5,
      8,
    ];
  static const int LIST2 = 13;
  List<int> list3;
  static const int LIST3 = 14;
  List<int> list4 = [
      1,
      2,
      3,
      6,
    ];
  static const int LIST4 = 15;
  Map<String, String> a_map = {
      "k1": "v1",
      "k2": "v2",
    };
  static const int A_MAP = 16;
  /// [t_variety.HealthCondition] Comment for enum field.
  int status = t_variety.HealthCondition.PASS;
  static const int STATUS = 17;
  /// [t_actual_base_dart.base_health_condition]
  int base_status = t_actual_base_dart.base_health_condition.FAIL;
  static const int BASE_STATUS = 18;


  bool isSetID2() => this.iD2 != null;

  unsetID2() {
    this.iD2 = null;
  }

  bool isSetEv1() => this.ev1 != null;

  unsetEv1() {
    this.ev1 = null;
  }

  bool isSetEv2() => this.ev2 != null;

  unsetEv2() {
    this.ev2 = null;
  }

  bool isSetID() => this.iD != -2;

  unsetID() {
    this.iD = -2;
  }

  bool isSetThing() => this.thing != null;

  unsetThing() {
    this.thing = null;
  }

  bool isSetThing2() => this.thing2 != null;

  unsetThing2() {
    this.thing2 = null;
  }

  bool isSetListfield() => this.listfield != null;

  unsetListfield() {
    this.listfield = null;
  }

  bool isSetID3() => this.iD3 != t_variety.VarietyConstants.other_default;

  unsetID3() {
    this.iD3 = t_variety.VarietyConstants.other_default;
  }

  bool isSetBin_field() => this.bin_field != null;

  unsetBin_field() {
    this.bin_field = null;
  }

  bool isSetBin_field2() => this.bin_field2 != null;

  unsetBin_field2() {
    this.bin_field2 = null;
  }

  bool isSetBin_field3() => this.bin_field3 != null;

  unsetBin_field3() {
    this.bin_field3 = null;
  }

  bool isSetBin_field4() => this.bin_field4 != null;

  unsetBin_field4() {
    this.bin_field4 = null;
  }

  bool isSetList2() => this.list2 != null;

  unsetList2() {
    this.list2 = null;
  }

  bool isSetList3() => this.list3 != null;

  unsetList3() {
    this.list3 = null;
  }

  bool isSetList4() => this.list4 != null;

  unsetList4() {
    this.list4 = null;
  }

  bool isSetA_map() => this.a_map != null;

  unsetA_map() {
    this.a_map = null;
  }

  bool isSetStatus() => this.status != null;

  unsetStatus() {
    this.status = null;
  }

  bool isSetBase_status() => this.base_status != null;

  unsetBase_status() {
    this.base_status = null;
  }

  @override
  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ID2:
        return this.iD2;
      case EV1:
        return this.ev1;
      case EV2:
        return this.ev2;
      case ID:
        return this.iD;
      case THING:
        return this.thing;
      case THING2:
        return this.thing2;
      case LISTFIELD:
        return this.listfield;
      case ID3:
        return this.iD3;
      case BIN_FIELD:
        return this.bin_field;
      case BIN_FIELD2:
        return this.bin_field2;
      case BIN_FIELD3:
        return this.bin_field3;
      case BIN_FIELD4:
        return this.bin_field4;
      case LIST2:
        return this.list2;
      case LIST3:
        return this.list3;
      case LIST4:
        return this.list4;
      case A_MAP:
        return this.a_map;
      case STATUS:
        return this.status;
      case BASE_STATUS:
        return this.base_status;
      default:
        throw ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  @override
  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ID2:
        if (value == null) {
          unsetID2();
        } else {
          this.iD2 = value as int;
        }
        break;

      case EV1:
        if (value == null) {
          unsetEv1();
        } else {
          this.ev1 = value as t_variety.Event;
        }
        break;

      case EV2:
        if (value == null) {
          unsetEv2();
        } else {
          this.ev2 = value as t_variety.Event;
        }
        break;

      case ID:
        if (value == null) {
          unsetID();
        } else {
          this.iD = value as int;
        }
        break;

      case THING:
        if (value == null) {
          unsetThing();
        } else {
          this.thing = value as String;
        }
        break;

      case THING2:
        if (value == null) {
          unsetThing2();
        } else {
          this.thing2 = value as String;
        }
        break;

      case LISTFIELD:
        if (value == null) {
          unsetListfield();
        } else {
          this.listfield = value as List<int>;
        }
        break;

      case ID3:
        if (value == null) {
          unsetID3();
        } else {
          this.iD3 = value as int;
        }
        break;

      case BIN_FIELD:
        if (value == null) {
          unsetBin_field();
        } else {
          this.bin_field = value as Uint8List;
        }
        break;

      case BIN_FIELD2:
        if (value == null) {
          unsetBin_field2();
        } else {
          this.bin_field2 = value as Uint8List;
        }
        break;

      case BIN_FIELD3:
        if (value == null) {
          unsetBin_field3();
        } else {
          this.bin_field3 = value as Uint8List;
        }
        break;

      case BIN_FIELD4:
        if (value == null) {
          unsetBin_field4();
        } else {
          this.bin_field4 = value as Uint8List;
        }
        break;

      case LIST2:
        if (value == null) {
          unsetList2();
        } else {
          this.list2 = value as List<int>;
        }
        break;

      case LIST3:
        if (value == null) {
          unsetList3();
        } else {
          this.list3 = value as List<int>;
        }
        break;

      case LIST4:
        if (value == null) {
          unsetList4();
        } else {
          this.list4 = value as List<int>;
        }
        break;

      case A_MAP:
        if (value == null) {
          unsetA_map();
        } else {
          this.a_map = value as Map<String, String>;
        }
        break;

      case STATUS:
        if (value == null) {
          unsetStatus();
        } else {
          this.status = value as int;
        }
        break;

      case BASE_STATUS:
        if (value == null) {
          unsetBase_status();
        } else {
          this.base_status = value as int;
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
      case ID2:
        return isSetID2();
      case EV1:
        return isSetEv1();
      case EV2:
        return isSetEv2();
      case ID:
        return isSetID();
      case THING:
        return isSetThing();
      case THING2:
        return isSetThing2();
      case LISTFIELD:
        return isSetListfield();
      case ID3:
        return isSetID3();
      case BIN_FIELD:
        return isSetBin_field();
      case BIN_FIELD2:
        return isSetBin_field2();
      case BIN_FIELD3:
        return isSetBin_field3();
      case BIN_FIELD4:
        return isSetBin_field4();
      case LIST2:
        return isSetList2();
      case LIST3:
        return isSetList3();
      case LIST4:
        return isSetList4();
      case A_MAP:
        return isSetA_map();
      case STATUS:
        return isSetStatus();
      case BASE_STATUS:
        return isSetBase_status();
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
        case ID2:
          if (field.type == thrift.TType.I64) {
            this.iD2 = iprot.readI64();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EV1:
          if (field.type == thrift.TType.STRUCT) {
            this.ev1 = t_variety.Event();
            ev1.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EV2:
          if (field.type == thrift.TType.STRUCT) {
            this.ev2 = t_variety.Event();
            ev2.read(iprot);
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ID:
          if (field.type == thrift.TType.I64) {
            this.iD = iprot.readI64();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case THING:
          if (field.type == thrift.TType.STRING) {
            this.thing = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case THING2:
          if (field.type == thrift.TType.STRING) {
            this.thing2 = iprot.readString();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LISTFIELD:
          if (field.type == thrift.TType.LIST) {
            thrift.TList elem0 = iprot.readListBegin();
            this.listfield = List<int>();
            for(int elem2 = 0; elem2 < elem0.length; ++elem2) {
              int elem1 = iprot.readI32();
              this.listfield.add(elem1);
            }
            iprot.readListEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ID3:
          if (field.type == thrift.TType.I64) {
            this.iD3 = iprot.readI64();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BIN_FIELD:
          if (field.type == thrift.TType.STRING) {
            this.bin_field = iprot.readBinary();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BIN_FIELD2:
          if (field.type == thrift.TType.STRING) {
            this.bin_field2 = iprot.readBinary();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BIN_FIELD3:
          if (field.type == thrift.TType.STRING) {
            this.bin_field3 = iprot.readBinary();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BIN_FIELD4:
          if (field.type == thrift.TType.STRING) {
            this.bin_field4 = iprot.readBinary();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LIST2:
          if (field.type == thrift.TType.LIST) {
            thrift.TList elem3 = iprot.readListBegin();
            this.list2 = List<int>();
            for(int elem5 = 0; elem5 < elem3.length; ++elem5) {
              int elem4 = iprot.readI32();
              this.list2.add(elem4);
            }
            iprot.readListEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LIST3:
          if (field.type == thrift.TType.LIST) {
            thrift.TList elem6 = iprot.readListBegin();
            this.list3 = List<int>();
            for(int elem8 = 0; elem8 < elem6.length; ++elem8) {
              int elem7 = iprot.readI32();
              this.list3.add(elem7);
            }
            iprot.readListEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LIST4:
          if (field.type == thrift.TType.LIST) {
            thrift.TList elem9 = iprot.readListBegin();
            this.list4 = List<int>();
            for(int elem11 = 0; elem11 < elem9.length; ++elem11) {
              int elem10 = iprot.readI32();
              this.list4.add(elem10);
            }
            iprot.readListEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case A_MAP:
          if (field.type == thrift.TType.MAP) {
            thrift.TMap elem12 = iprot.readMapBegin();
            this.a_map = Map<String, String>();
            for(int elem14 = 0; elem14 < elem12.length; ++elem14) {
              String elem15 = iprot.readString();
              String elem13 = iprot.readString();
              this.a_map[elem15] = elem13;
            }
            iprot.readMapEnd();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STATUS:
          if (field.type == thrift.TType.I32) {
            this.status = iprot.readI32();
          } else {
            thrift.TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BASE_STATUS:
          if (field.type == thrift.TType.I32) {
            this.base_status = iprot.readI32();
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
    if (isSetID2()) {
      oprot.writeFieldBegin(_I_D2_FIELD_DESC);
      oprot.writeI64(this.iD2);
      oprot.writeFieldEnd();
    }
    if (isSetEv1()) {
      oprot.writeFieldBegin(_EV1_FIELD_DESC);
      this.ev1.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetEv2()) {
      oprot.writeFieldBegin(_EV2_FIELD_DESC);
      this.ev2.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetID()) {
      oprot.writeFieldBegin(_ID_FIELD_DESC);
      oprot.writeI64(this.iD);
      oprot.writeFieldEnd();
    }
    if (isSetThing()) {
      oprot.writeFieldBegin(_THING_FIELD_DESC);
      oprot.writeString(this.thing);
      oprot.writeFieldEnd();
    }
    if (isSetThing2()) {
      oprot.writeFieldBegin(_THING2_FIELD_DESC);
      oprot.writeString(this.thing2);
      oprot.writeFieldEnd();
    }
    if (isSetListfield()) {
      oprot.writeFieldBegin(_LISTFIELD_FIELD_DESC);
      oprot.writeListBegin(thrift.TList(thrift.TType.I32, this.listfield.length));
      for(var elem16 in this.listfield) {
        oprot.writeI32(elem16);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    if (isSetID3()) {
      oprot.writeFieldBegin(_I_D3_FIELD_DESC);
      oprot.writeI64(this.iD3);
      oprot.writeFieldEnd();
    }
    if (isSetBin_field()) {
      oprot.writeFieldBegin(_BIN_FIELD_FIELD_DESC);
      oprot.writeBinary(this.bin_field);
      oprot.writeFieldEnd();
    }
    if (isSetBin_field2()) {
      oprot.writeFieldBegin(_BIN_FIELD2_FIELD_DESC);
      oprot.writeBinary(this.bin_field2);
      oprot.writeFieldEnd();
    }
    if (isSetBin_field3()) {
      oprot.writeFieldBegin(_BIN_FIELD3_FIELD_DESC);
      oprot.writeBinary(this.bin_field3);
      oprot.writeFieldEnd();
    }
    if (isSetBin_field4()) {
      oprot.writeFieldBegin(_BIN_FIELD4_FIELD_DESC);
      oprot.writeBinary(this.bin_field4);
      oprot.writeFieldEnd();
    }
    if (isSetList2()) {
      oprot.writeFieldBegin(_LIST2_FIELD_DESC);
      oprot.writeListBegin(thrift.TList(thrift.TType.I32, this.list2.length));
      for(var elem17 in this.list2) {
        oprot.writeI32(elem17);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    if (isSetList3()) {
      oprot.writeFieldBegin(_LIST3_FIELD_DESC);
      oprot.writeListBegin(thrift.TList(thrift.TType.I32, this.list3.length));
      for(var elem18 in this.list3) {
        oprot.writeI32(elem18);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    if (isSetList4()) {
      oprot.writeFieldBegin(_LIST4_FIELD_DESC);
      oprot.writeListBegin(thrift.TList(thrift.TType.I32, this.list4.length));
      for(var elem19 in this.list4) {
        oprot.writeI32(elem19);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    if (isSetA_map()) {
      oprot.writeFieldBegin(_A_MAP_FIELD_DESC);
      oprot.writeMapBegin(thrift.TMap(thrift.TType.STRING, thrift.TType.STRING, this.a_map.length));
      for(var elem20 in this.a_map.keys) {
        oprot.writeString(elem20);
        oprot.writeString(a_map[elem20]);
      }
      oprot.writeMapEnd();
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_STATUS_FIELD_DESC);
    oprot.writeI32(this.status);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_BASE_STATUS_FIELD_DESC);
    oprot.writeI32(this.base_status);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer('TestingDefaults(');

    if (isSetID2()) {
      ret.write('iD2:');
      ret.write(this.iD2);
    }

    ret.write(', ');
    ret.write('ev1:');
    if (this.ev1 == null) {
      ret.write('null');
    } else {
      ret.write(this.ev1);
    }

    ret.write(', ');
    ret.write('ev2:');
    if (this.ev2 == null) {
      ret.write('null');
    } else {
      ret.write(this.ev2);
    }

    ret.write(', ');
    ret.write('iD:');
    ret.write(this.iD);

    ret.write(', ');
    ret.write('thing:');
    if (this.thing == null) {
      ret.write('null');
    } else {
      ret.write(this.thing);
    }

    if (isSetThing2()) {
      ret.write(', ');
      ret.write('thing2:');
      if (this.thing2 == null) {
        ret.write('null');
      } else {
        ret.write(this.thing2);
      }
    }

    ret.write(', ');
    ret.write('listfield:');
    if (this.listfield == null) {
      ret.write('null');
    } else {
      ret.write(this.listfield);
    }

    ret.write(', ');
    ret.write('iD3:');
    ret.write(this.iD3);

    ret.write(', ');
    ret.write('bin_field:');
    if (this.bin_field == null) {
      ret.write('null');
    } else {
      ret.write('BINARY');
    }

    if (isSetBin_field2()) {
      ret.write(', ');
      ret.write('bin_field2:');
      if (this.bin_field2 == null) {
        ret.write('null');
      } else {
        ret.write('BINARY');
      }
    }

    ret.write(', ');
    ret.write('bin_field3:');
    if (this.bin_field3 == null) {
      ret.write('null');
    } else {
      ret.write('BINARY');
    }

    if (isSetBin_field4()) {
      ret.write(', ');
      ret.write('bin_field4:');
      if (this.bin_field4 == null) {
        ret.write('null');
      } else {
        ret.write('BINARY');
      }
    }

    if (isSetList2()) {
      ret.write(', ');
      ret.write('list2:');
      if (this.list2 == null) {
        ret.write('null');
      } else {
        ret.write(this.list2);
      }
    }

    if (isSetList3()) {
      ret.write(', ');
      ret.write('list3:');
      if (this.list3 == null) {
        ret.write('null');
      } else {
        ret.write(this.list3);
      }
    }

    ret.write(', ');
    ret.write('list4:');
    if (this.list4 == null) {
      ret.write('null');
    } else {
      ret.write(this.list4);
    }

    if (isSetA_map()) {
      ret.write(', ');
      ret.write('a_map:');
      if (this.a_map == null) {
        ret.write('null');
      } else {
        ret.write(this.a_map);
      }
    }

    ret.write(', ');
    ret.write('status:');
    String status_name = t_variety.HealthCondition.VALUES_TO_NAMES[this.status];
    if (status_name != null) {
      ret.write(status_name);
      ret.write(' (');
    }
    ret.write(this.status);
    if (status_name != null) {
      ret.write(')');
    }

    ret.write(', ');
    ret.write('base_status:');
    String base_status_name = t_actual_base_dart.base_health_condition.VALUES_TO_NAMES[this.base_status];
    if (base_status_name != null) {
      ret.write(base_status_name);
      ret.write(' (');
    }
    ret.write(this.base_status);
    if (base_status_name != null) {
      ret.write(')');
    }

    ret.write(')');

    return ret.toString();
  }

  @override
  bool operator ==(Object o) {
    if (o is TestingDefaults) {
      return this.iD2 == o.iD2 &&
        this.ev1 == o.ev1 &&
        this.ev2 == o.ev2 &&
        this.iD == o.iD &&
        this.thing == o.thing &&
        this.thing2 == o.thing2 &&
        DeepCollectionEquality().equals(this.listfield, o.listfield) &&
        this.iD3 == o.iD3 &&
        this.bin_field == o.bin_field &&
        this.bin_field2 == o.bin_field2 &&
        this.bin_field3 == o.bin_field3 &&
        this.bin_field4 == o.bin_field4 &&
        DeepCollectionEquality().equals(this.list2, o.list2) &&
        DeepCollectionEquality().equals(this.list3, o.list3) &&
        DeepCollectionEquality().equals(this.list4, o.list4) &&
        DeepCollectionEquality().equals(this.a_map, o.a_map) &&
        this.status == o.status &&
        this.base_status == o.base_status;
    }
    return false;
  }

  @override
  int get hashCode {
    var value = 17;
    value = (value * 31) ^ this.iD2.hashCode;
    value = (value * 31) ^ this.ev1.hashCode;
    value = (value * 31) ^ this.ev2.hashCode;
    value = (value * 31) ^ this.iD.hashCode;
    value = (value * 31) ^ this.thing.hashCode;
    value = (value * 31) ^ this.thing2.hashCode;
    value = (value * 31) ^ DeepCollectionEquality().hash(this.listfield);
    value = (value * 31) ^ this.iD3.hashCode;
    value = (value * 31) ^ this.bin_field.hashCode;
    value = (value * 31) ^ this.bin_field2.hashCode;
    value = (value * 31) ^ this.bin_field3.hashCode;
    value = (value * 31) ^ this.bin_field4.hashCode;
    value = (value * 31) ^ DeepCollectionEquality().hash(this.list2);
    value = (value * 31) ^ DeepCollectionEquality().hash(this.list3);
    value = (value * 31) ^ DeepCollectionEquality().hash(this.list4);
    value = (value * 31) ^ DeepCollectionEquality().hash(this.a_map);
    value = (value * 31) ^ this.status.hashCode;
    value = (value * 31) ^ this.base_status.hashCode;
    return value;
  }

  TestingDefaults clone({
    int iD2,
    t_variety.Event ev1,
    t_variety.Event ev2,
    int iD,
    String thing,
    String thing2,
    List<int> listfield,
    int iD3,
    Uint8List bin_field,
    Uint8List bin_field2,
    Uint8List bin_field3,
    Uint8List bin_field4,
    List<int> list2,
    List<int> list3,
    List<int> list4,
    Map<String, String> a_map,
    int status,
    int base_status,
  }) {
    return TestingDefaults()
      ..iD2 = iD2 ?? this.iD2
      ..ev1 = ev1 ?? this.ev1
      ..ev2 = ev2 ?? this.ev2
      ..iD = iD ?? this.iD
      ..thing = thing ?? this.thing
      ..thing2 = thing2 ?? this.thing2
      ..listfield = listfield ?? this.listfield
      ..iD3 = iD3 ?? this.iD3
      ..bin_field = bin_field ?? this.bin_field
      ..bin_field2 = bin_field2 ?? this.bin_field2
      ..bin_field3 = bin_field3 ?? this.bin_field3
      ..bin_field4 = bin_field4 ?? this.bin_field4
      ..list2 = list2 ?? this.list2
      ..list3 = list3 ?? this.list3
      ..list4 = list4 ?? this.list4
      ..a_map = a_map ?? this.a_map
      ..status = status ?? this.status
      ..base_status = base_status ?? this.base_status;
  }

  validate() {
    // check for required fields
    if (this.status == null) {
      throw thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, "Required field 'status' was not present in struct TestingDefaults");
    }
    if (this.base_status == null) {
      throw thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, "Required field 'base_status' was not present in struct TestingDefaults");
    }
    // check that fields of type enum have valid values
    if (isSetStatus() && !t_variety.HealthCondition.VALID_VALUES.contains(this.status)) {
      throw thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, "The field 'status' has been assigned the invalid value ${this.status}");
    }
    if (isSetBase_status() && !t_actual_base_dart.base_health_condition.VALID_VALUES.contains(this.base_status)) {
      throw thrift.TProtocolError(thrift.TProtocolErrorType.INVALID_DATA, "The field 'base_status' has been assigned the invalid value ${this.base_status}");
    }
  }
}
