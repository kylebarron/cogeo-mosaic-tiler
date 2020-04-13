FROM lambgeo/lambda:gdal2.4-py3.7

WORKDIR /tmp

ENV PYTHONUSERBASE=/var/task

COPY cogeo_mosaic_tiler/ cogeo_mosaic_tiler/
COPY setup.py setup.py

# Install dependencies
RUN pip install cython==0.28 --no-cache-dir
RUN pip install . --user
RUN rm -rf cogeo_mosaic_tiler setup.py