// Generated by gencpp from file turtle_control/VelTranslate.msg
// DO NOT EDIT!


#ifndef TURTLE_CONTROL_MESSAGE_VELTRANSLATE_H
#define TURTLE_CONTROL_MESSAGE_VELTRANSLATE_H

#include <ros/service_traits.h>


#include <turtle_control/VelTranslateRequest.h>
#include <turtle_control/VelTranslateResponse.h>


namespace turtle_control
{

struct VelTranslate
{

typedef VelTranslateRequest Request;
typedef VelTranslateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct VelTranslate
} // namespace turtle_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turtle_control::VelTranslate > {
  static const char* value()
  {
    return "cf2a08b505b561a876017bf49e86a2f9";
  }

  static const char* value(const ::turtle_control::VelTranslate&) { return value(); }
};

template<>
struct DataType< ::turtle_control::VelTranslate > {
  static const char* value()
  {
    return "turtle_control/VelTranslate";
  }

  static const char* value(const ::turtle_control::VelTranslate&) { return value(); }
};


// service_traits::MD5Sum< ::turtle_control::VelTranslateRequest> should match 
// service_traits::MD5Sum< ::turtle_control::VelTranslate > 
template<>
struct MD5Sum< ::turtle_control::VelTranslateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turtle_control::VelTranslate >::value();
  }
  static const char* value(const ::turtle_control::VelTranslateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtle_control::VelTranslateRequest> should match 
// service_traits::DataType< ::turtle_control::VelTranslate > 
template<>
struct DataType< ::turtle_control::VelTranslateRequest>
{
  static const char* value()
  {
    return DataType< ::turtle_control::VelTranslate >::value();
  }
  static const char* value(const ::turtle_control::VelTranslateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turtle_control::VelTranslateResponse> should match 
// service_traits::MD5Sum< ::turtle_control::VelTranslate > 
template<>
struct MD5Sum< ::turtle_control::VelTranslateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turtle_control::VelTranslate >::value();
  }
  static const char* value(const ::turtle_control::VelTranslateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtle_control::VelTranslateResponse> should match 
// service_traits::DataType< ::turtle_control::VelTranslate > 
template<>
struct DataType< ::turtle_control::VelTranslateResponse>
{
  static const char* value()
  {
    return DataType< ::turtle_control::VelTranslate >::value();
  }
  static const char* value(const ::turtle_control::VelTranslateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURTLE_CONTROL_MESSAGE_VELTRANSLATE_H
