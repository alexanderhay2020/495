// Generated by gencpp from file turtle_control/VelTranslateResponse.msg
// DO NOT EDIT!


#ifndef TURTLE_CONTROL_MESSAGE_VELTRANSLATERESPONSE_H
#define TURTLE_CONTROL_MESSAGE_VELTRANSLATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <turtle_control/TurtleVel.h>

namespace turtle_control
{
template <class ContainerAllocator>
struct VelTranslateResponse_
{
  typedef VelTranslateResponse_<ContainerAllocator> Type;

  VelTranslateResponse_()
    : turtle_vel()  {
    }
  VelTranslateResponse_(const ContainerAllocator& _alloc)
    : turtle_vel(_alloc)  {
  (void)_alloc;
    }



   typedef  ::turtle_control::TurtleVel_<ContainerAllocator>  _turtle_vel_type;
  _turtle_vel_type turtle_vel;





  typedef boost::shared_ptr< ::turtle_control::VelTranslateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtle_control::VelTranslateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct VelTranslateResponse_

typedef ::turtle_control::VelTranslateResponse_<std::allocator<void> > VelTranslateResponse;

typedef boost::shared_ptr< ::turtle_control::VelTranslateResponse > VelTranslateResponsePtr;
typedef boost::shared_ptr< ::turtle_control::VelTranslateResponse const> VelTranslateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtle_control::VelTranslateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtle_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'turtle_control': ['/home/alex/Git_Stuff/495/sandbox/src/turtle_control/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_control::VelTranslateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_control::VelTranslateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_control::VelTranslateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cb2acc06d93fdc951848b5663e1c2155";
  }

  static const char* value(const ::turtle_control::VelTranslateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcb2acc06d93fdc95ULL;
  static const uint64_t static_value2 = 0x1848b5663e1c2155ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtle_control/VelTranslateResponse";
  }

  static const char* value(const ::turtle_control::VelTranslateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "TurtleVel turtle_vel\n"
"\n"
"\n"
"================================================================================\n"
"MSG: turtle_control/TurtleVel\n"
"float64 linear # 3vector {x, y, z}\n"
"float64 angular # 3vector {x, y, z}\n"
;
  }

  static const char* value(const ::turtle_control::VelTranslateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.turtle_vel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VelTranslateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtle_control::VelTranslateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtle_control::VelTranslateResponse_<ContainerAllocator>& v)
  {
    s << indent << "turtle_vel: ";
    s << std::endl;
    Printer< ::turtle_control::TurtleVel_<ContainerAllocator> >::stream(s, indent + "  ", v.turtle_vel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLE_CONTROL_MESSAGE_VELTRANSLATERESPONSE_H