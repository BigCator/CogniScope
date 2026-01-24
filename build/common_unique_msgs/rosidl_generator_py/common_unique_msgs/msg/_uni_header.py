# generated from rosidl_generator_py/resource/_idl.py.em
# with input from common_unique_msgs:msg/UniHeader.idl
# generated code does not contain a copyright notice


# Import statements for member types

import builtins  # noqa: E402, I100

import rosidl_parser.definition  # noqa: E402, I100


class Metaclass_UniHeader(type):
    """Metaclass of message 'UniHeader'."""

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
                'common_unique_msgs.msg.UniHeader')
            logger.debug(
                'Failed to import needed modules for type support:\n' +
                traceback.format_exc())
        else:
            cls._CREATE_ROS_MESSAGE = module.create_ros_message_msg__msg__uni_header
            cls._CONVERT_FROM_PY = module.convert_from_py_msg__msg__uni_header
            cls._CONVERT_TO_PY = module.convert_to_py_msg__msg__uni_header
            cls._TYPE_SUPPORT = module.type_support_msg__msg__uni_header
            cls._DESTROY_ROS_MESSAGE = module.destroy_ros_message_msg__msg__uni_header

    @classmethod
    def __prepare__(cls, name, bases, **kwargs):
        # list constant names here so that they appear in the help text of
        # the message class under "Data and other attributes defined here:"
        # as well as populate each message instance
        return {
        }


class UniHeader(metaclass=Metaclass_UniHeader):
    """Message class 'UniHeader'."""

    __slots__ = [
        '_ui_msg_id',
        '_ui_msg_datalength',
        '_ul_msg_stamp',
    ]

    _fields_and_field_types = {
        'ui_msg_id': 'uint32',
        'ui_msg_datalength': 'uint32',
        'ul_msg_stamp': 'uint64',
    }

    SLOT_TYPES = (
        rosidl_parser.definition.BasicType('uint32'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint32'),  # noqa: E501
        rosidl_parser.definition.BasicType('uint64'),  # noqa: E501
    )

    def __init__(self, **kwargs):
        assert all('_' + key in self.__slots__ for key in kwargs.keys()), \
            'Invalid arguments passed to constructor: %s' % \
            ', '.join(sorted(k for k in kwargs.keys() if '_' + k not in self.__slots__))
        self.ui_msg_id = kwargs.get('ui_msg_id', int())
        self.ui_msg_datalength = kwargs.get('ui_msg_datalength', int())
        self.ul_msg_stamp = kwargs.get('ul_msg_stamp', int())

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
        if self.ui_msg_id != other.ui_msg_id:
            return False
        if self.ui_msg_datalength != other.ui_msg_datalength:
            return False
        if self.ul_msg_stamp != other.ul_msg_stamp:
            return False
        return True

    @classmethod
    def get_fields_and_field_types(cls):
        from copy import copy
        return copy(cls._fields_and_field_types)

    @builtins.property
    def ui_msg_id(self):
        """Message field 'ui_msg_id'."""
        return self._ui_msg_id

    @ui_msg_id.setter
    def ui_msg_id(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_msg_id' field must be of type 'int'"
            assert value >= 0 and value < 4294967296, \
                "The 'ui_msg_id' field must be an unsigned integer in [0, 4294967295]"
        self._ui_msg_id = value

    @builtins.property
    def ui_msg_datalength(self):
        """Message field 'ui_msg_datalength'."""
        return self._ui_msg_datalength

    @ui_msg_datalength.setter
    def ui_msg_datalength(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ui_msg_datalength' field must be of type 'int'"
            assert value >= 0 and value < 4294967296, \
                "The 'ui_msg_datalength' field must be an unsigned integer in [0, 4294967295]"
        self._ui_msg_datalength = value

    @builtins.property
    def ul_msg_stamp(self):
        """Message field 'ul_msg_stamp'."""
        return self._ul_msg_stamp

    @ul_msg_stamp.setter
    def ul_msg_stamp(self, value):
        if __debug__:
            assert \
                isinstance(value, int), \
                "The 'ul_msg_stamp' field must be of type 'int'"
            assert value >= 0 and value < 18446744073709551616, \
                "The 'ul_msg_stamp' field must be an unsigned integer in [0, 18446744073709551615]"
        self._ul_msg_stamp = value
