from setuptools import find_packages
from setuptools import setup

setup(
    name='ultralytics_ros',
    version='0.0.0',
    packages=find_packages(
        include=('ultralytics_ros', 'ultralytics_ros.*')),
)
