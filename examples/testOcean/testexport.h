#ifndef TEST_OCEAN_EXPORT_H
#define TEST_OCEAN_EXPORT_H


#if defined(_MSC_VER) || defined(__CYGWIN__) || defined(__MINGW32__) || defined( __BCPLUSPLUS__)  || defined( __MWERKS__)
#  ifdef TEST_OCEAN_LIBRARY
#    define TEST_OCEAN_EXPORT __declspec(dllexport)
#  else
#    define TEST_OCEAN_EXPORT __declspec(dllimport)
#  endif
#else
#   ifdef TEST_OCEAN_LIBRARY
#      define TEST_OCEAN_EXPORT __attribute__ ((visibility("default")))
#   else
#      define TEST_OCEAN_EXPORT
#   endif 
#endif

#endif // TEST_OCEAN_EXPORT_H
