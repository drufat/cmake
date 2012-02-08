#  - Find the native numpy includes
# This module defines
# 
#  NUMPY_FOUND, If false, do not try to use numpy headers.
#  NUMPY_INCLUDE_DIR, where to find numpy/arrayobject.h, etc.
#

find_program(PYTHON_EXECUTABLE python REQUIRED)

execute_process (
        COMMAND "${PYTHON_EXECUTABLE}" -c "import numpy; print numpy.get_include()"
        OUTPUT_VARIABLE NUMPY_INCLUDE_DIR
        OUTPUT_STRIP_TRAILING_WHITESPACE
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Numpy DEFAULT_MSG NUMPY_INCLUDE_DIR)

MARK_AS_ADVANCED(
  NUMPY_INCLUDE_DIR
)
