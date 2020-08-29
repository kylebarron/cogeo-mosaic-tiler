"""Cogeo_mosaic_tiler."""

import pkg_resources

version = pkg_resources.get_distribution(__package__).version

# Import file to register colormaps
from . import custom_cmaps
