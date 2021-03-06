if(MSVC)
  # avoid erro on find_package_handle_standard_args
  set(STDFILESYSTEM_LIBRARY "__")
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  set(STDFILESYSTEM_LIBRARY c++fs)
else()
  set(STDFILESYSTEM_LIBRARY stdc++fs)
endif()

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(STDFILESYSTEM DEFAULT_MSG STDFILESYSTEM_LIBRARY)

if (STDFILESYSTEM_LIBRARY STREQUAL "__")
  set(STDFILESYSTEM_LIBRARY "")
endif()

mark_as_advanced(STDFILESYSTEM_FOUND STDFILESYSTEM_LIBRARY)
