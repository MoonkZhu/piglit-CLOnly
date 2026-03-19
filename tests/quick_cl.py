# encoding=utf-8
from __future__ import (
    absolute_import, division, print_function, unicode_literals
)

from tests.cl import profile as _cl
from tests.opencl_foreign import profile as _opencl_foreign

__all__ = ['profile']

profile = _cl.copy()
profile.update(_opencl_foreign)
