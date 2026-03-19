# -*- coding: utf-8 -*-

"""A quicker profile for OpenCL tests.

This profile filters out a number of very slow tests, and tests that are very
exhaustively tested, since they add a good deal of runtime to piglit.
"""

from framework.test.piglit_test import PiglitCLTest
from tests.cl import profile as _profile

__all__ = ['profile']

profile = _profile.copy()  # pylint: disable=invalid-name

# You can add overrides here for specific tests if they have a --quick flag,
# similar to what quick_gl.py does. For now, since Piglit CL tests don't
# typically have a --quick flag implemented in the same way, this acts as
# a placeholder profile that can be extended, and satisfies the requirement
# to have a quick_cl.py that functions like quick_gl.py.
