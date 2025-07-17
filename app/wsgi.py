import sys
import os
import logging

logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
logging.debug(f"Python sys.path: {sys.path}")

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from app import app as application
