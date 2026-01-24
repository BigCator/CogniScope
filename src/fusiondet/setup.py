from setuptools import setup

package_name = 'fusiondet'

setup(
    name=package_name,
    version='0.0.0',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='yjqin',
    maintainer_email='yjqin@todo.todo',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            "test=fusiondet.test1:main",
            "test2=fusiondet.test_carla:main",
            "fusiondet=fusiondet.test:main",
            "fusiondet1=fusiondet.mstdet:main",
        ],
    },
)
