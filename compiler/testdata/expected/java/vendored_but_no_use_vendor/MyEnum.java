/**
 * Autogenerated by Frugal Compiler (3.17.5)
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *
 * @generated
 */
package vendor_namespace.java;

import java.util.Map;
import java.util.HashMap;
import org.apache.thrift.TEnum;

public enum MyEnum implements org.apache.thrift.TEnum {
	ZERO(0),
	TWO(2);

	private final int value;

	private MyEnum(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public static MyEnum findByValue(int value) {
		switch (value) {
			case 0:
				return ZERO;
			case 2:
				return TWO;
			default:
				return null;
		}
	}
}
