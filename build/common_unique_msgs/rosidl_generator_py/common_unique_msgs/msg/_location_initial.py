# generated from rosidl_generator_py/resource/_idl.py.em
# with input from common_unique_msgs:msg/LocationInitial.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import math  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_LocationInitial(type):
    """Metaclass of message 'LocationInitial'."""

    _CREATE_ROS_MESSAGE = None
    _CONVERT_FROM_PY = None
    _CONVERT_TO_PY = None
    _DESTROY_ROS_MESSAGE = None
    _TYPE_SUPPORT = None

    __constants = {
    }

    @classmethod
    def __import_type_support__(cls):
        try:
            from rosidl_generator_py import import_type_support
            module = import_type_support('common_unique_msgs')
        except ImportError:
            import logging
            import traceback
            logger = logging.getLogger(
                'common_unique_msgs.msg.LocationInitial')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__location_initial
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__location_initial
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__location_initial
            cls._TYPE_SUPPORT = module.type_support_msg__msg__location_initial
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__location_initial

            from common_unique_msgs.msg import UniHeader
            if UniHeader.__class__._TYPE_SUPPORT is None:
                UniHeader.__class__.__import_type_support__()

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class LocationInitial(metaclass=Metaclass_LocationInitial):
    """Message class 'LocationInitial'."""

    __slots__ = [
        '_header',
        '_s_ins_vx',
        '_s_ins_vy',
        '_s_ins_vz',
        '_i_ins_ax',
        '_i_ins_ay',
        '_i_ins_az',
        '_f_ins_anglex',
        '_f_ins_angley',
        '_f_ins_anglez',
        '_f_ins_wx',
        '_f_ins_wy',
        '_f_ins_wz',
        '_f_ins_wax',
        '_f_ins_way',
        '_f_ins_waz',
        '_us_check_sum',
    ]

    _fields_and_field_types = {
        'header': 'common_unique_msgs/UniHeader',
        's_ins_vx': 'int16',
        's_ins_vy': 'int16',
        's_ins_vz': 'int16',
        'i_ins_ax': 'int32',
        'i_ins_ay': 'int32',
        'i_ins_az': 'int32',
        'f_ins_anglex': 'float',
        'f_ins_angley': 'float',
        'f_ins_anglez': 'float',
        'f_ins_wx': 'float',
        'f_ins_wy': 'float',
        'f_ins_wz': 'float',
        'f_ins_wax': 'float',
        'f_ins_way': 'float',
        'f_ins_waz': 'float',
        'us_check_sum': 'uint16',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.NamespacedType(['common_unique_msgs', 'msg'], 'UniHeader'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('float'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint16'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        from common_unique_msgs.msg import UniHeader
        self.header = kwargs.get('header', UniHeader())
        self.s_ins_vx = kwargs.get('s_ins_vx', int())
        self.s_ins_vy = kwargs.get('s_ins_vy', int())
        self.s_ins_vz = kwargs.get('s_ins_vz', int())
        self.i_ins_ax = kwargs.get('i_ins_ax', int())
        self.i_ins_ay = kwargs.get('i_ins_ay', int())
        self.i_ins_az = kwargs.get('i_ins_az', int())
        self.f_ins_anglex = kwargs.get('f_ins_anglex', float())
        self.f_ins_angley = kwargs.get('f_ins_angley', float())
        self.f_ins_anglez = kwargs.get('f_ins_anglez', float())
        self.f_ins_wx = kwargs.get('f_ins_wx', float())
        self.f_ins_wy = kwargs.get('f_ins_wy', float())
        self.f_ins_wz = kwargs.get('f_ins_wz', float())
        self.f_ins_wax = kwargs.get('f_ins_wax', float())
        self.f_ins_way = kwargs.get('f_ins_way', float())
        self.f_ins_waz = kwargs.get('f_ins_waz', float())
        self.us_check_sum = kwargs.get('us_check_sum', int())

    def __repr__(self):
        typename = self.__class__.__module__.split('.')
        typename.pop()
        typename.append(self.__class__.__name__)
        args = []
        for s, t in zip(self.__slots__, self.SLOT_TYPES):
            field = getattr(self, s)
            fieldstr = repr(field)
            # We use Python array type for fields that can be directly stored
            # in them, and "normal" sequences for everything else.  If it is
            # a type that we store in an array, strip off the 'array' portion.
            if (
                isinstance(t, rosidl_parser.definition.AbstractSequence) and
                isinstance(t.value_type, rosidl_parser.definition.BasicType) and
                t.value_type.typename in ['float', 'double', 'int8', 'uint8', 'int16', 'uint16', 'int32', 'uint32', 'int64', 'uint64']
            ):
                if len(field) == 0:
                    fieldstr = '[]'
                else:
                    assert fieldstr.startswith('array(')
                    prefix = "array('X', "
                    suffix = ')'
                    fieldstr = fieldstr[len(prefix):-len(suffix)]
            args.append(s[1:] + '=' + fieldstr)
        return '%s(%s)' % ('.'.join(typename), ', '.join(args))

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        if self.header != other.header:
            return False
        if self.s_ins_vx != other.s_ins_vx:
            return False
        if self.s_ins_vy != other.s_ins_vy:
            return False
        if self.s_ins_vz != other.s_ins_vz:
            return False
        if self.i_ins_ax != other.i_ins_ax:
            return False
        if self.i_ins_ay != other.i_ins_ay:
            return False
        if self.i_ins_az != other.i_ins_az:
            return False
        if self.f_ins_anglex != other.f_ins_anglex:
            return False
        if self.f_ins_angley != other.f_ins_angley:
            return False
        if self.f_ins_anglez != other.f_ins_anglez:
            return False
        if self.f_ins_wx != other.f_ins_wx:
            return False
        if self.f_ins_wy != other.f_ins_wy:
            return False
        if self.f_ins_wz != other.f_ins_wz:
            return False
        if self.f_ins_wax != other.f_ins_wax:
            return False
        if self.f_ins_way != other.f_ins_way:
            return False
        if self.f_ins_waz != other.f_ins_waz:
            return False
        if self.us_check_sum != other.us_check_sum:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @builtins.property
    def header(self):
        """Message field 'header'."""
        return self._header

    @header.setter
    def header(self, value):
        if __debug__:
            from common_unique_msgs.msg import UniHeader
            assert \
                isinstance(value, UniHeader), \
                "The 'header' field must be a sub message of type 'UniHeader'"
        self._header = value

    @builtins.property
    def s_ins_vx(self):
        """Message field 's_ins_vx'."""
        return self._s_ins_vx

    @s_ins_vx.setter
    def s_ins_vx(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_ins_vx' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_ins_vx' field must be an integer in [-32768, 32767]"
        self._s_ins_vx = value

    @builtins.property
    def s_ins_vy(self):
        """Message field 's_ins_vy'."""
        return self._s_ins_vy

    @s_ins_vy.setter
    def s_ins_vy(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_ins_vy' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_ins_vy' field must be an integer in [-32768, 32767]"
        self._s_ins_vy = value

    @builtins.property
    def s_ins_vz(self):
        """Message field 's_ins_vz'."""
        return self._s_ins_vz

    @s_ins_vz.setter
    def s_ins_vz(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_ins_vz' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_ins_vz' field must be an integer in [-32768, 32767]"
        self._s_ins_vz = value

    @builtins.property
    def i_ins_ax(self):
        """Message field 'i_ins_ax'."""
        return self._i_ins_ax

    @i_ins_ax.setter
    def i_ins_ax(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'i_ins_ax' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'i_ins_ax' field must be an integer in [-2147483648, 2147483647]"
        self._i_ins_ax = value

    @builtins.property
    def i_ins_ay(self):
        """Message field 'i_ins_ay'."""
        return self._i_ins_ay

    @i_ins_ay.setter
    def i_ins_ay(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'i_ins_ay' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'i_ins_ay' field must be an integer in [-2147483648, 2147483647]"
        self._i_ins_ay = value

    @builtins.property
    def i_ins_az(self):
        """Message field 'i_ins_az'."""
        return self._i_ins_az

    @i_ins_az.setter
    def i_ins_az(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'i_ins_az' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'i_ins_az' field must be an integer in [-2147483648, 2147483647]"
        self._i_ins_az = value

    @builtins.property
    def f_ins_anglex(self):
        """Message field 'f_ins_anglex'."""
        return self._f_ins_anglex

    @f_ins_anglex.setter
    def f_ins_anglex(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_anglex' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_anglex' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_anglex = value

    @builtins.property
    def f_ins_angley(self):
        """Message field 'f_ins_angley'."""
        return self._f_ins_angley

    @f_ins_angley.setter
    def f_ins_angley(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_angley' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_angley' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_angley = value

    @builtins.property
    def f_ins_anglez(self):
        """Message field 'f_ins_anglez'."""
        return self._f_ins_anglez

    @f_ins_anglez.setter
    def f_ins_anglez(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_anglez' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_anglez' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_anglez = value

    @builtins.property
    def f_ins_wx(self):
        """Message field 'f_ins_wx'."""
        return self._f_ins_wx

    @f_ins_wx.setter
    def f_ins_wx(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_wx' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_wx' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_wx = value

    @builtins.property
    def f_ins_wy(self):
        """Message field 'f_ins_wy'."""
        return self._f_ins_wy

    @f_ins_wy.setter
    def f_ins_wy(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_wy' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_wy' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_wy = value

    @builtins.property
    def f_ins_wz(self):
        """Message field 'f_ins_wz'."""
        return self._f_ins_wz

    @f_ins_wz.setter
    def f_ins_wz(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_wz' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_wz' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_wz = value

    @builtins.property
    def f_ins_wax(self):
        """Message field 'f_ins_wax'."""
        return self._f_ins_wax

    @f_ins_wax.setter
    def f_ins_wax(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_wax' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_wax' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_wax = value

    @builtins.property
    def f_ins_way(self):
        """Message field 'f_ins_way'."""
        return self._f_ins_way

    @f_ins_way.setter
    def f_ins_way(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_way' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_way' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_way = value

    @builtins.property
    def f_ins_waz(self):
        """Message field 'f_ins_waz'."""
        return self._f_ins_waz

    @f_ins_waz.setter
    def f_ins_waz(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'f_ins_waz' field must be of type 'float'"
            assert not (value < -3.402823466e+38 or value > 3.402823466e+38) or math.isinf(value), \
                "The 'f_ins_waz' field must be a float in [-3.402823466e+38, 3.402823466e+38]"
        self._f_ins_waz = value

    @builtins.property
    def us_check_sum(self):
        """Message field 'us_check_sum'."""
        return self._us_check_sum

    @us_check_sum.setter
    def us_check_sum(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'us_check_sum' field must be of type 'int'"
            assert value >= 0 and value < 65536, \
                "The 'us_check_sum' field must be an unsigned integer in [0, 65535]"
        self._us_check_sum = value
