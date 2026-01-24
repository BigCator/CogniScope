# generated from rosidl_generator_py/resource/_idl.py.em
# with input from common_unique_msgs:msg/Location.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_Location(type):
    """Metaclass of message 'Location'."""

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
                'common_unique_msgs.msg.Location')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__location
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__location
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__location
            cls._TYPE_SUPPORT = module.type_support_msg__msg__location
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__location

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


class Location(metaclass=Metaclass_Location):
    """Message class 'Location'."""

    __slots__ = [
        '_header',
        '_ui_satel_lon',
        '_ui_satel_lat',
        '_ui_satel_alt',
        '_uc_satle_state',
        '_ui_nav_lon',
        '_ui_nav_lat',
        '_ui_nav_alt',
        '_us_nav_yaw',
        '_s_nav_pitch',
        '_s_nav_roll',
        '_s_nav_vx',
        '_s_nav_vy',
        '_s_nav_vz',
        '_s_nav_wx',
        '_s_nav_wy',
        '_s_nav_wz',
        '_ui_mileage',
        '_ul_satel_time',
        '_ui_work_time',
        '_uc_work_state',
        '_uc_nav_state',
        '_reserve1',
        '_reserve2',
        '_us_check_sum',
    ]

    _fields_and_field_types = {
        'header': 'common_unique_msgs/UniHeader',
        'ui_satel_lon': 'int32',
        'ui_satel_lat': 'int32',
        'ui_satel_alt': 'int32',
        'uc_satle_state': 'uint8',
        'ui_nav_lon': 'int32',
        'ui_nav_lat': 'int32',
        'ui_nav_alt': 'int32',
        'us_nav_yaw': 'uint16',
        's_nav_pitch': 'int16',
        's_nav_roll': 'int16',
        's_nav_vx': 'int16',
        's_nav_vy': 'int16',
        's_nav_vz': 'int16',
        's_nav_wx': 'int16',
        's_nav_wy': 'int16',
        's_nav_wz': 'int16',
        'ui_mileage': 'uint32',
        'ul_satel_time': 'uint64',
        'ui_work_time': 'uint32',
        'uc_work_state': 'uint8',
        'uc_nav_state': 'uint8',
        'reserve1': 'uint16',
        'reserve2': 'uint16',
        'us_check_sum': 'uint16',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.NamespacedType(['common_unique_msgs', 'msg'], 'UniHeader'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint8'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('int32'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('int16'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint32'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint64'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint32'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint8'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint8'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint16'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint16'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint16'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        from common_unique_msgs.msg import UniHeader
        self.header = kwargs.get('header', UniHeader())
        self.ui_satel_lon = kwargs.get('ui_satel_lon', int())
        self.ui_satel_lat = kwargs.get('ui_satel_lat', int())
        self.ui_satel_alt = kwargs.get('ui_satel_alt', int())
        self.uc_satle_state = kwargs.get('uc_satle_state', int())
        self.ui_nav_lon = kwargs.get('ui_nav_lon', int())
        self.ui_nav_lat = kwargs.get('ui_nav_lat', int())
        self.ui_nav_alt = kwargs.get('ui_nav_alt', int())
        self.us_nav_yaw = kwargs.get('us_nav_yaw', int())
        self.s_nav_pitch = kwargs.get('s_nav_pitch', int())
        self.s_nav_roll = kwargs.get('s_nav_roll', int())
        self.s_nav_vx = kwargs.get('s_nav_vx', int())
        self.s_nav_vy = kwargs.get('s_nav_vy', int())
        self.s_nav_vz = kwargs.get('s_nav_vz', int())
        self.s_nav_wx = kwargs.get('s_nav_wx', int())
        self.s_nav_wy = kwargs.get('s_nav_wy', int())
        self.s_nav_wz = kwargs.get('s_nav_wz', int())
        self.ui_mileage = kwargs.get('ui_mileage', int())
        self.ul_satel_time = kwargs.get('ul_satel_time', int())
        self.ui_work_time = kwargs.get('ui_work_time', int())
        self.uc_work_state = kwargs.get('uc_work_state', int())
        self.uc_nav_state = kwargs.get('uc_nav_state', int())
        self.reserve1 = kwargs.get('reserve1', int())
        self.reserve2 = kwargs.get('reserve2', int())
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
        if self.ui_satel_lon != other.ui_satel_lon:
            return False
        if self.ui_satel_lat != other.ui_satel_lat:
            return False
        if self.ui_satel_alt != other.ui_satel_alt:
            return False
        if self.uc_satle_state != other.uc_satle_state:
            return False
        if self.ui_nav_lon != other.ui_nav_lon:
            return False
        if self.ui_nav_lat != other.ui_nav_lat:
            return False
        if self.ui_nav_alt != other.ui_nav_alt:
            return False
        if self.us_nav_yaw != other.us_nav_yaw:
            return False
        if self.s_nav_pitch != other.s_nav_pitch:
            return False
        if self.s_nav_roll != other.s_nav_roll:
            return False
        if self.s_nav_vx != other.s_nav_vx:
            return False
        if self.s_nav_vy != other.s_nav_vy:
            return False
        if self.s_nav_vz != other.s_nav_vz:
            return False
        if self.s_nav_wx != other.s_nav_wx:
            return False
        if self.s_nav_wy != other.s_nav_wy:
            return False
        if self.s_nav_wz != other.s_nav_wz:
            return False
        if self.ui_mileage != other.ui_mileage:
            return False
        if self.ul_satel_time != other.ul_satel_time:
            return False
        if self.ui_work_time != other.ui_work_time:
            return False
        if self.uc_work_state != other.uc_work_state:
            return False
        if self.uc_nav_state != other.uc_nav_state:
            return False
        if self.reserve1 != other.reserve1:
            return False
        if self.reserve2 != other.reserve2:
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
    def ui_satel_lon(self):
        """Message field 'ui_satel_lon'."""
        return self._ui_satel_lon

    @ui_satel_lon.setter
    def ui_satel_lon(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_satel_lon' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'ui_satel_lon' field must be an integer in [-2147483648, 2147483647]"
        self._ui_satel_lon = value

    @builtins.property
    def ui_satel_lat(self):
        """Message field 'ui_satel_lat'."""
        return self._ui_satel_lat

    @ui_satel_lat.setter
    def ui_satel_lat(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_satel_lat' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'ui_satel_lat' field must be an integer in [-2147483648, 2147483647]"
        self._ui_satel_lat = value

    @builtins.property
    def ui_satel_alt(self):
        """Message field 'ui_satel_alt'."""
        return self._ui_satel_alt

    @ui_satel_alt.setter
    def ui_satel_alt(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_satel_alt' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'ui_satel_alt' field must be an integer in [-2147483648, 2147483647]"
        self._ui_satel_alt = value

    @builtins.property
    def uc_satle_state(self):
        """Message field 'uc_satle_state'."""
        return self._uc_satle_state

    @uc_satle_state.setter
    def uc_satle_state(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'uc_satle_state' field must be of type 'int'"
            assert value >= 0 and value < 256, \
                "The 'uc_satle_state' field must be an unsigned integer in [0, 255]"
        self._uc_satle_state = value

    @builtins.property
    def ui_nav_lon(self):
        """Message field 'ui_nav_lon'."""
        return self._ui_nav_lon

    @ui_nav_lon.setter
    def ui_nav_lon(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_nav_lon' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'ui_nav_lon' field must be an integer in [-2147483648, 2147483647]"
        self._ui_nav_lon = value

    @builtins.property
    def ui_nav_lat(self):
        """Message field 'ui_nav_lat'."""
        return self._ui_nav_lat

    @ui_nav_lat.setter
    def ui_nav_lat(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_nav_lat' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'ui_nav_lat' field must be an integer in [-2147483648, 2147483647]"
        self._ui_nav_lat = value

    @builtins.property
    def ui_nav_alt(self):
        """Message field 'ui_nav_alt'."""
        return self._ui_nav_alt

    @ui_nav_alt.setter
    def ui_nav_alt(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_nav_alt' field must be of type 'int'"
            assert value >= -2147483648 and value < 2147483648, \
                "The 'ui_nav_alt' field must be an integer in [-2147483648, 2147483647]"
        self._ui_nav_alt = value

    @builtins.property
    def us_nav_yaw(self):
        """Message field 'us_nav_yaw'."""
        return self._us_nav_yaw

    @us_nav_yaw.setter
    def us_nav_yaw(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'us_nav_yaw' field must be of type 'int'"
            assert value >= 0 and value < 65536, \
                "The 'us_nav_yaw' field must be an unsigned integer in [0, 65535]"
        self._us_nav_yaw = value

    @builtins.property
    def s_nav_pitch(self):
        """Message field 's_nav_pitch'."""
        return self._s_nav_pitch

    @s_nav_pitch.setter
    def s_nav_pitch(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_pitch' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_pitch' field must be an integer in [-32768, 32767]"
        self._s_nav_pitch = value

    @builtins.property
    def s_nav_roll(self):
        """Message field 's_nav_roll'."""
        return self._s_nav_roll

    @s_nav_roll.setter
    def s_nav_roll(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_roll' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_roll' field must be an integer in [-32768, 32767]"
        self._s_nav_roll = value

    @builtins.property
    def s_nav_vx(self):
        """Message field 's_nav_vx'."""
        return self._s_nav_vx

    @s_nav_vx.setter
    def s_nav_vx(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_vx' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_vx' field must be an integer in [-32768, 32767]"
        self._s_nav_vx = value

    @builtins.property
    def s_nav_vy(self):
        """Message field 's_nav_vy'."""
        return self._s_nav_vy

    @s_nav_vy.setter
    def s_nav_vy(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_vy' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_vy' field must be an integer in [-32768, 32767]"
        self._s_nav_vy = value

    @builtins.property
    def s_nav_vz(self):
        """Message field 's_nav_vz'."""
        return self._s_nav_vz

    @s_nav_vz.setter
    def s_nav_vz(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_vz' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_vz' field must be an integer in [-32768, 32767]"
        self._s_nav_vz = value

    @builtins.property
    def s_nav_wx(self):
        """Message field 's_nav_wx'."""
        return self._s_nav_wx

    @s_nav_wx.setter
    def s_nav_wx(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_wx' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_wx' field must be an integer in [-32768, 32767]"
        self._s_nav_wx = value

    @builtins.property
    def s_nav_wy(self):
        """Message field 's_nav_wy'."""
        return self._s_nav_wy

    @s_nav_wy.setter
    def s_nav_wy(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_wy' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_wy' field must be an integer in [-32768, 32767]"
        self._s_nav_wy = value

    @builtins.property
    def s_nav_wz(self):
        """Message field 's_nav_wz'."""
        return self._s_nav_wz

    @s_nav_wz.setter
    def s_nav_wz(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 's_nav_wz' field must be of type 'int'"
            assert value >= -32768 and value < 32768, \
                "The 's_nav_wz' field must be an integer in [-32768, 32767]"
        self._s_nav_wz = value

    @builtins.property
    def ui_mileage(self):
        """Message field 'ui_mileage'."""
        return self._ui_mileage

    @ui_mileage.setter
    def ui_mileage(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_mileage' field must be of type 'int'"
            assert value >= 0 and value < 4294967296, \
                "The 'ui_mileage' field must be an unsigned integer in [0, 4294967295]"
        self._ui_mileage = value

    @builtins.property
    def ul_satel_time(self):
        """Message field 'ul_satel_time'."""
        return self._ul_satel_time

    @ul_satel_time.setter
    def ul_satel_time(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ul_satel_time' field must be of type 'int'"
            assert value >= 0 and value < 18446744073709551616, \
                "The 'ul_satel_time' field must be an unsigned integer in [0, 18446744073709551615]"
        self._ul_satel_time = value

    @builtins.property
    def ui_work_time(self):
        """Message field 'ui_work_time'."""
        return self._ui_work_time

    @ui_work_time.setter
    def ui_work_time(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_work_time' field must be of type 'int'"
            assert value >= 0 and value < 4294967296, \
                "The 'ui_work_time' field must be an unsigned integer in [0, 4294967295]"
        self._ui_work_time = value

    @builtins.property
    def uc_work_state(self):
        """Message field 'uc_work_state'."""
        return self._uc_work_state

    @uc_work_state.setter
    def uc_work_state(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'uc_work_state' field must be of type 'int'"
            assert value >= 0 and value < 256, \
                "The 'uc_work_state' field must be an unsigned integer in [0, 255]"
        self._uc_work_state = value

    @builtins.property
    def uc_nav_state(self):
        """Message field 'uc_nav_state'."""
        return self._uc_nav_state

    @uc_nav_state.setter
    def uc_nav_state(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'uc_nav_state' field must be of type 'int'"
            assert value >= 0 and value < 256, \
                "The 'uc_nav_state' field must be an unsigned integer in [0, 255]"
        self._uc_nav_state = value

    @builtins.property
    def reserve1(self):
        """Message field 'reserve1'."""
        return self._reserve1

    @reserve1.setter
    def reserve1(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'reserve1' field must be of type 'int'"
            assert value >= 0 and value < 65536, \
                "The 'reserve1' field must be an unsigned integer in [0, 65535]"
        self._reserve1 = value

    @builtins.property
    def reserve2(self):
        """Message field 'reserve2'."""
        return self._reserve2

    @reserve2.setter
    def reserve2(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'reserve2' field must be of type 'int'"
            assert value >= 0 and value < 65536, \
                "The 'reserve2' field must be an unsigned integer in [0, 65535]"
        self._reserve2 = value

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
