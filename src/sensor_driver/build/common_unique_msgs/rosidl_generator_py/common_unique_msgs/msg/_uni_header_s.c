// generated from rosidl_generator_py/resource/_idl_support.c.em
// with input from common_unique_msgs:msg/UniHeader.idl
// generated code does not contain a copyright notice
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION
#include <Python.h>
#include <stdbool.h>
#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-function"
#endif
#include "numpy/ndarrayobject.h"
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif
#include "rosidl_runtime_c/visibility_control.h"
#include "common_unique_msgs/msg/detail/uni_header__struct.h"
#include "common_unique_msgs/msg/detail/uni_header__functions.h"


ROSIDL_GENERATOR_C_EXPORT
bool common_unique_msgs__msg__uni_header__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[45];
    {
      char * class_name = NULL;
      char * module_name = NULL;
      {
        PyObject * class_attr = PyObject_GetAttrString(_pymsg, "__class__");
        if (class_attr) {
          PyObject * name_attr = PyObject_GetAttrString(class_attr, "__name__");
          if (name_attr) {
            class_name = (char *)PyUnicode_1BYTE_DATA(name_attr);
            Py_DECREF(name_attr);
          }
          PyObject * module_attr = PyObject_GetAttrString(class_attr, "__module__");
          if (module_attr) {
            module_name = (char *)PyUnicode_1BYTE_DATA(module_attr);
            Py_DECREF(module_attr);
          }
          Py_DECREF(class_attr);
        }
      }
      if (!class_name || !module_name) {
        return false;
      }
      snprintf(full_classname_dest, sizeof(full_classname_dest), "%s.%s", module_name, class_name);
    }
    assert(strncmp("common_unique_msgs.msg._uni_header.UniHeader", full_classname_dest, 44) == 0);
  }
  common_unique_msgs__msg__UniHeader * ros_message = _ros_message;
  {  // ui_msg_id
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_msg_id");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_msg_id = PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // ui_msg_datalength
    PyObject * field = PyObject_GetAttrString(_pymsg, "ui_msg_datalength");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ui_msg_datalength = PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }
  {  // ul_msg_stamp
    PyObject * field = PyObject_GetAttrString(_pymsg, "ul_msg_stamp");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->ul_msg_stamp = PyLong_AsUnsignedLongLong(field);
    Py_DECREF(field);
  }

  return true;
}

ROSIDL_GENERATOR_C_EXPORT
PyObject * common_unique_msgs__msg__uni_header__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of UniHeader */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("common_unique_msgs.msg._uni_header");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "UniHeader");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  common_unique_msgs__msg__UniHeader * ros_message = (common_unique_msgs__msg__UniHeader *)raw_ros_message;
  {  // ui_msg_id
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->ui_msg_id);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_msg_id", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ui_msg_datalength
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->ui_msg_datalength);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ui_msg_datalength", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // ul_msg_stamp
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLongLong(ros_message->ul_msg_stamp);
    {
      int rc = PyObject_SetAttrString(_pymessage, "ul_msg_stamp", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }

  // ownership of _pymessage is transferred to the caller
  return _pymessage;
}
