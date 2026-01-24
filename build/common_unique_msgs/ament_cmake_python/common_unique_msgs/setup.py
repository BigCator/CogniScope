from setuptools import find_packages
from setuptools import setup

setup(
    name='common_unique_msgs',
    version='0.1.0',
    packages=find_packages(
        include=('common_unique_msgs', 'common_unique_msgs.*')),
)
