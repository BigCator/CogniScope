# generated from rosidl_generator_py/resource/_idl.py.em
# with input from common_unique_msgs:msg/CustomIMU.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import math  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_CustomIMU(type):
    """Metaclass of message 'CustomIMU'."""

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
                'common_unique_msgs.msg.CustomIMU')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__custom_imu
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__custom_imu
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__custom_imu
            cls._TYPE_SUPPORT = module.type_support_msg__msg__custom_imu
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__custom_imu

            from std_msgs.msg import Header
            if Header.__class__._TYPE_SUPPORT is None:
                Header.__class__.__import_type_support__()

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class CustomIMU(metaclass=Metaclass_CustomIMU):
    """Message class 'CustomIMU'."""

    __slots__ = [
        '_header',
        '_gps_week',
        '_gps_time',
        '_gyro_x',
        '_gyro_y',
        '_gyro_z',
        '_acc_x',
        '_acc_y',
        '_acc_z',
        '_temperature',
        '_checksum',
    ]

    _fields_and_field_types = {
        'header': 'std_msgs/Header',
        'gps_week': 'uint16',
        'gps_time': 'double',
        'gyro_x': 'double',
        'gyro_y': 'double',
        'gyro_z': 'double',
        'acc_x': 'double',
        'acc_y': 'double',
        'acc_z': 'double',
        'temperature': 'double',
        'checksum': 'string',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.NamespacedType(['std_msgs', 'msg'], 'Header'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint16'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.UnboundedString(),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        from std_msgs.msg import Header
        self.header = kwargs.get('header', Header())
        self.gps_week = kwargs.get('gps_week', int())
        self.gps_time = kwargs.get('gps_time', float())
        self.gyro_x = kwargs.get('gyro_x', float())
        self.gyro_y = kwargs.get('gyro_y', float())
        self.gyro_z = kwargs.get('gyro_z', float())
        self.acc_x = kwargs.get('acc_x', float())
        self.acc_y = kwargs.get('acc_y', float())
        self.acc_z = kwargs.get('acc_z', float())
        self.temperature = kwargs.get('temperature', float())
        self.checksum = kwargs.get('checksum', str())

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
        if self.gps_week != other.gps_week:
            return False
        if self.gps_time != other.gps_time:
            return False
        if self.gyro_x != other.gyro_x:
            return False
        if self.gyro_y != other.gyro_y:
            return False
        if self.gyro_z != other.gyro_z:
            return False
        if self.acc_x != other.acc_x:
            return False
        if self.acc_y != other.acc_y:
            return False
        if self.acc_z != other.acc_z:
            return False
        if self.temperature != other.temperature:
            return False
        if self.checksum != other.checksum:
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
            from std_msgs.msg import Header
            assert \
                isinstance(value, Header), \
                "The 'header' field must be a sub message of type 'Header'"
        self._header = value

    @builtins.property
    def gps_week(self):
        """Message field 'gps_week'."""
        return self._gps_week

    @gps_week.setter
    def gps_week(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'gps_week' field must be of type 'int'"
            assert value >= 0 and value < 65536, \
                "The 'gps_week' field must be an unsigned integer in [0, 65535]"
        self._gps_week = value

    @builtins.property
    def gps_time(self):
        """Message field 'gps_time'."""
        return self._gps_time

    @gps_time.setter
    def gps_time(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'gps_time' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'gps_time' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._gps_time = value

    @builtins.property
    def gyro_x(self):
        """Message field 'gyro_x'."""
        return self._gyro_x

    @gyro_x.setter
    def gyro_x(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'gyro_x' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'gyro_x' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._gyro_x = value

    @builtins.property
    def gyro_y(self):
        """Message field 'gyro_y'."""
        return self._gyro_y

    @gyro_y.setter
    def gyro_y(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'gyro_y' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'gyro_y' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._gyro_y = value

    @builtins.property
    def gyro_z(self):
        """Message field 'gyro_z'."""
        return self._gyro_z

    @gyro_z.setter
    def gyro_z(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'gyro_z' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'gyro_z' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._gyro_z = value

    @builtins.property
    def acc_x(self):
        """Message field 'acc_x'."""
        return self._acc_x

    @acc_x.setter
    def acc_x(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'acc_x' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'acc_x' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._acc_x = value

    @builtins.property
    def acc_y(self):
        """Message field 'acc_y'."""
        return self._acc_y

    @acc_y.setter
    def acc_y(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'acc_y' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'acc_y' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._acc_y = value

    @builtins.property
    def acc_z(self):
        """Message field 'acc_z'."""
        return self._acc_z

    @acc_z.setter
    def acc_z(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'acc_z' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'acc_z' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._acc_z = value

    @builtins.property
    def temperature(self):
        """Message field 'temperature'."""
        return self._temperature

    @temperature.setter
    def temperature(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'temperature' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'temperature' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._temperature = value

    @builtins.property
    def checksum(self):
        """Message field 'checksum'."""
        return self._checksum

    @checksum.setter
    def checksum(self, value):
        if __debug__:
            assert \
                isinstance(value, str), \
                "The 'checksum' field must be of type 'str'"
        self._checksum = value
