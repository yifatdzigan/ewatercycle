#!/bin/bash

# eWaterCycle preprocessing script for soil moisture observations.
#
# uses environment variables:
#     IO_DIR, for input and output directory for this cycle point
#     ISO_DATE and ISO_DATE_EXT, for date to process
#     MODEL_GRID_MASK for size of grid to resize observations to, and mask to use (no need for observations at point for which there is no model (e.g. oceans)
#          note that MODEL_GRID_MASK in this script does not need to point to the same mask as in the preprocess_deterministic_forcing.sh script.  

#stop the script if we use an unset variable, or a command fails
set -o nounset -o errexit

#copy from shared input/output dir
cp $IO_DIR/download/h14_${ISO_DATE}_0000.grib.bz2 .

#unzip
bunzip2 h14_${ISO_DATE}_0000.grib.bz2

#convert to NetCDF using ncl_convert2nc
ncl_convert2nc h14_${ISO_DATE}_0000.grib

#scale, set correct time, date and calender, mask unwanted observations (e.g. for which there is no model)
cdo ifthen ${OBSERVATION_MASK} -remapbil,${OBSERVATION_TARGET_GRID} -settime,00:00:00 -setdate,${ISO_DATE_EXT} -setcalendar,standard h14_${ISO_DATE}_0000.nc h14_${ISO_DATE}.nc

#copy output to shared I/O dir

cp h14_${ISO_DATE}.nc $IO_DIR/preprocess/
