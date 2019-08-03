import pytest
import os

def test_if_readme_exists():
    """Check if README file exitst"""
    assert os.path.isfile('./README.md')
