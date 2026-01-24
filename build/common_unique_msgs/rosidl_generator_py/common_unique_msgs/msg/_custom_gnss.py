# generated from rosidl_generator_py/resource/_idl.py.em
# with input from common_unique_msgs:msg/CustomGNSS.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import math  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_CustomGNSS(type):
    """Metaclass of message 'CustomGNSS'."""

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
                'common_unique_msgs.msg.CustomGNSS')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__custom_gnss
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__custom_gnss
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__custom_gnss
            cls._TYPE_SUPPORT = module.type_support_msg__msg__custom_gnss
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__custom_gnss

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


class CustomGNSS(metaclass=Metaclass_CustomGNSS):
    """Message class 'CustomGNSS'."""

    __slots__ = [
        '_header',
        '_gps_week',
        '_gps_time',
        '_heading',
        '_pitch',
        '_roll',
        '_latitude',
        '_longitude',
        '_altitude',
        '_ve',
        '_vn',
        '_vu',
        '_baseline',
        '_nsv1',
        '_nsv2',
        '_status',
        '_checksum',
    ]

    _fields_and_field_types = {
        'header': 'std_msgs/Header',
        'gps_week': 'uint16',
        'gps_time': 'double',
        'heading': 'double',
        'pitch': 'double',
        'roll': 'double',
        'latitude': 'double',
        'longitude': 'double',
        'altitude': 'double',
        've': 'double',
        'vn': 'double',
        'vu': 'double',
        'baseline': 'double',
        'nsv1': 'uint8',
        'nsv2': 'uint8',
        'status': 'uint16',
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
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('double'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint8'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint8'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint16'),  # noqa: E501
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
        self.heading = kwargs.get('heading', float())
        self.pitch = kwargs.get('pitch', float())
        self.roll = kwargs.get('roll', float())
        self.latitude = kwargs.get('latitude', float())
        self.longitude = kwargs.get('longitude', float())
        self.altitude = kwargs.get('altitude', float())
        self.ve = kwargs.get('ve', float())
        self.vn = kwargs.get('vn', float())
        self.vu = kwargs.get('vu', float())
        self.baseline = kwargs.get('baseline', float())
        self.nsv1 = kwargs.get('nsv1', int())
        self.nsv2 = kwargs.get('nsv2', int())
        self.status = kwargs.get('status', int())
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
        if self.heading != other.heading:
            return False
        if self.pitch != other.pitch:
            return False
        if self.roll != other.roll:
            return False
        if self.latitude != other.latitude:
            return False
        if self.longitude != other.longitude:
            return False
        if self.altitude != other.altitude:
            return False
        if self.ve != other.ve:
            return False
        if self.vn != other.vn:
            return False
        if self.vu != other.vu:
            return False
        if self.baseline != other.baseline:
            return False
        if self.nsv1 != other.nsv1:
            return False
        if self.nsv2 != other.nsv2:
            return False
        if self.status != other.status:
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
    def heading(self):
        """Message field 'heading'."""
        return self._heading

    @heading.setter
    def heading(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'heading' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'heading' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._heading = value

    @builtins.property
    def pitch(self):
        """Message field 'pitch'."""
        return self._pitch

    @pitch.setter
    def pitch(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'pitch' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'pitch' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._pitch = value

    @builtins.property
    def roll(self):
        """Message field 'roll'."""
        return self._roll

    @roll.setter
    def roll(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'roll' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'roll' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._roll = value

    @builtins.property
    def latitude(self):
        """Message field 'latitude'."""
        return self._latitude

    @latitude.setter
    def latitude(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'latitude' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'latitude' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._latitude = value

    @builtins.property
    def longitude(self):
        """Message field 'longitude'."""
        return self._longitude

    @longitude.setter
    def longitude(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'longitude' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'longitude' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._longitude = value

    @builtins.property
    def altitude(self):
        """Message field 'altitude'."""
        return self._altitude

    @altitude.setter
    def altitude(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'altitude' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'altitude' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._altitude = value

    @builtins.property
    def ve(self):
        """Message field 've'."""
        return self._ve

    @ve.setter
    def ve(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 've' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 've' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._ve = value

    @builtins.property
    def vn(self):
        """Message field 'vn'."""
        return self._vn

    @vn.setter
    def vn(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'vn' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'vn' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._vn = value

    @builtins.property
    def vu(self):
        """Message field 'vu'."""
        return self._vu

    @vu.setter
    def vu(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'vu' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'vu' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._vu = value

    @builtins.property
    def baseline(self):
        """Message field 'baseline'."""
        return self._baseline

    @baseline.setter
    def baseline(self, value):
        if __debug__:
            assert \
                isinstance(value, float), \
                "The 'baseline' field must be of type 'float'"
            assert not (value < -1.7976931348623157e+308 or value > 1.7976931348623157e+308) or math.isinf(value), \
                "The 'baseline' field must be a double in [-1.7976931348623157e+308, 1.7976931348623157e+308]"
        self._baseline = value

    @builtins.property
    def nsv1(self):
        """Message field 'nsv1'."""
        return self._nsv1

    @nsv1.setter
    def nsv1(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'nsv1' field must be of type 'int'"
            assert value >= 0 and value < 256, \
                "The 'nsv1' field must be an unsigned integer in [0, 255]"
        self._nsv1 = value

    @builtins.property
    def nsv2(self):
        """Message field 'nsv2'."""
        return self._nsv2

    @nsv2.setter
    def nsv2(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'nsv2' field must be of type 'int'"
            assert value >= 0 and value < 256, \
                "The 'nsv2' field must be an unsigned integer in [0, 255]"
        self._nsv2 = value

    @builtins.property
    def status(self):
        """Message field 'status'."""
        return self._status

    @status.setter
    def status(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'status' field must be of type 'int'"
            assert value >= 0 and value < 65536, \
                "The 'status' field must be an unsigned integer in [0, 65535]"
        self._status = value

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
