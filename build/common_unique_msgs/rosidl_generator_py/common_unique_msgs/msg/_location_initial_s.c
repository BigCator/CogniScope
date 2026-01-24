// generated from rosidl_generator_py/resource/_idl_support.c.em
// with input from common_unique_msgs:msg/LocationInitial.idl
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
#include "common_unique_msgs/msg/detail/location_initial__struct.h"
#include "common_unique_msgs/msg/detail/location_initial__functions.h"

bool common_unique_msgs__msg__uni_header__convert_from_py(PyObject * _pymsg, void * _ros_message);
PyObject * common_unique_msgs__msg__uni_header__convert_to_py(void * raw_ros_message);

ROSIDL_GENERATOR_C_EXPORT
bool common_unique_msgs__msg__location_initial__convert_from_py(PyObject * _pymsg, void * _ros_message)
{
  // check that the passed message is of the expected Python class
  {
    char full_classname_dest[57];
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
    assert(strncmp("common_unique_msgs.msg._location_initial.LocationInitial", full_classname_dest, 56) == 0);
  }
  common_unique_msgs__msg__LocationInitial * ros_message = _ros_message;
  {  // header
    PyObject * field = PyObject_GetAttrString(_pymsg, "header");
    if (!field) {
      return false;
    }
    if (!common_unique_msgs__msg__uni_header__convert_from_py(field, &ros_message->header)) {
      Py_DECREF(field);
      return false;
    }
    Py_DECREF(field);
  }
  {  // s_ins_vx
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_ins_vx");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_ins_vx = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_ins_vy
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_ins_vy");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_ins_vy = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // s_ins_vz
    PyObject * field = PyObject_GetAttrString(_pymsg, "s_ins_vz");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->s_ins_vz = (int16_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // i_ins_ax
    PyObject * field = PyObject_GetAttrString(_pymsg, "i_ins_ax");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->i_ins_ax = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // i_ins_ay
    PyObject * field = PyObject_GetAttrString(_pymsg, "i_ins_ay");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->i_ins_ay = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // i_ins_az
    PyObject * field = PyObject_GetAttrString(_pymsg, "i_ins_az");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->i_ins_az = (int32_t)PyLong_AsLong(field);
    Py_DECREF(field);
  }
  {  // f_ins_anglex
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_anglex");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_anglex = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_angley
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_angley");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_angley = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_anglez
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_anglez");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_anglez = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_wx
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_wx");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_wx = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_wy
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_wy");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_wy = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_wz
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_wz");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_wz = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_wax
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_wax");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_wax = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_way
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_way");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_way = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // f_ins_waz
    PyObject * field = PyObject_GetAttrString(_pymsg, "f_ins_waz");
    if (!field) {
      return false;
    }
    assert(PyFloat_Check(field));
    ros_message->f_ins_waz = (float)PyFloat_AS_DOUBLE(field);
    Py_DECREF(field);
  }
  {  // us_check_sum
    PyObject * field = PyObject_GetAttrString(_pymsg, "us_check_sum");
    if (!field) {
      return false;
    }
    assert(PyLong_Check(field));
    ros_message->us_check_sum = (uint16_t)PyLong_AsUnsignedLong(field);
    Py_DECREF(field);
  }

  return true;
}

ROSIDL_GENERATOR_C_EXPORT
PyObject * common_unique_msgs__msg__location_initial__convert_to_py(void * raw_ros_message)
{
  /* NOTE(esteve): Call constructor of LocationInitial */
  PyObject * _pymessage = NULL;
  {
    PyObject * pymessage_module = PyImport_ImportModule("common_unique_msgs.msg._location_initial");
    assert(pymessage_module);
    PyObject * pymessage_class = PyObject_GetAttrString(pymessage_module, "LocationInitial");
    assert(pymessage_class);
    Py_DECREF(pymessage_module);
    _pymessage = PyObject_CallObject(pymessage_class, NULL);
    Py_DECREF(pymessage_class);
    if (!_pymessage) {
      return NULL;
    }
  }
  common_unique_msgs__msg__LocationInitial * ros_message = (common_unique_msgs__msg__LocationInitial *)raw_ros_message;
  {  // header
    PyObject * field = NULL;
    field = common_unique_msgs__msg__uni_header__convert_to_py(&ros_message->header);
    if (!field) {
      return NULL;
    }
    {
      int rc = PyObject_SetAttrString(_pymessage, "header", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_ins_vx
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_ins_vx);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_ins_vx", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_ins_vy
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_ins_vy);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_ins_vy", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // s_ins_vz
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->s_ins_vz);
    {
      int rc = PyObject_SetAttrString(_pymessage, "s_ins_vz", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // i_ins_ax
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->i_ins_ax);
    {
      int rc = PyObject_SetAttrString(_pymessage, "i_ins_ax", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // i_ins_ay
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->i_ins_ay);
    {
      int rc = PyObject_SetAttrString(_pymessage, "i_ins_ay", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // i_ins_az
    PyObject * field = NULL;
    field = PyLong_FromLong(ros_message->i_ins_az);
    {
      int rc = PyObject_SetAttrString(_pymessage, "i_ins_az", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_anglex
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_anglex);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_anglex", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_angley
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_angley);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_angley", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_anglez
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_anglez);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_anglez", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_wx
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_wx);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_wx", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_wy
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_wy);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_wy", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_wz
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_wz);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_wz", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_wax
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_wax);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_wax", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_way
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_way);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_way", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // f_ins_waz
    PyObject * field = NULL;
    field = PyFloat_FromDouble(ros_message->f_ins_waz);
    {
      int rc = PyObject_SetAttrString(_pymessage, "f_ins_waz", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }
  {  // us_check_sum
    PyObject * field = NULL;
    field = PyLong_FromUnsignedLong(ros_message->us_check_sum);
    {
      int rc = PyObject_SetAttrString(_pymessage, "us_check_sum", field);
      Py_DECREF(field);
      if (rc) {
        return NULL;
      }
    }
  }

  // ownership of _pymessage is transferred to the caller
  return _pymessage;
}
