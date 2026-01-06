import ipaddress
import logging
import pytest
from typing import Any
from collections import defaultdict
import ipaddress
import json
import logging
import os
import re
import tempfile
import time


logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)



pytestmark = [
    pytest.mark.topology("wan-interop"),
    pytest.mark.sanity_check(skip_sanity=True),
]





