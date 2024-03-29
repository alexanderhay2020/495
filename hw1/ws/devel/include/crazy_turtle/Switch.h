// Generated by gencpp from file crazy_turtle/Switch.msg
// DO NOT EDIT!


#ifndef CRAZY_TURTLE_MESSAGE_SWITCH_H
#define CRAZY_TURTLE_MESSAGE_SWITCH_H

#include <ros/service_traits.h>


#include <crazy_turtle/SwitchRequest.h>
#include <crazy_turtle/SwitchResponse.h>


namespace crazy_turtle
{

struct Switch
{

typedef SwitchRequest Request;
typedef SwitchResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Switch
} // namespace crazy_turtle


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::crazy_turtle::Switch > {
  static const char* value()
  {
    return "3670ec1bdb46b88fbbe4d15e91105ba7";
  }

  static const char* value(const ::crazy_turtle::Switch&) { return value(); }
};

template<>
struct DataType< ::crazy_turtle::Switch > {
  static const char* value()
  {
    return "crazy_turtle/Switch";
  }

  static const char* value(const ::crazy_turtle::Switch&) { return value(); }
};


// service_traits::MD5Sum< ::crazy_turtle::SwitchRequest> should match 
// service_traits::MD5Sum< ::crazy_turtle::Switch > 
template<>
struct MD5Sum< ::crazy_turtle::SwitchRequest>
{
  static const char* value()
  {
    return MD5Sum< ::crazy_turtle::Switch >::value();
  }
  static const char* value(const ::crazy_turtle::SwitchRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::crazy_turtle::SwitchRequest> should match 
// service_traits::DataType< ::crazy_turtle::Switch > 
template<>
struct DataType< ::crazy_turtle::SwitchRequest>
{
  static const char* value()
  {
    return DataType< ::crazy_turtle::Switch >::value();
  }
  static const char* value(const ::crazy_turtle::SwitchRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::crazy_turtle::SwitchResponse> should match 
// service_traits::MD5Sum< ::crazy_turtle::Switch > 
template<>
struct MD5Sum< ::crazy_turtle::SwitchResponse>
{
  static const char* value()
  {
    return MD5Sum< ::crazy_turtle::Switch >::value();
  }
  static const char* value(const ::crazy_turtle::SwitchResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::crazy_turtle::SwitchResponse> should match 
// service_traits::DataType< ::crazy_turtle::Switch > 
template<>
struct DataType< ::crazy_turtle::SwitchResponse>
{
  static const char* value()
  {
    return DataType< ::crazy_turtle::Switch >::value();
  }
  static const char* value(const ::crazy_turtle::SwitchResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CRAZY_TURTLE_MESSAGE_SWITCH_H
