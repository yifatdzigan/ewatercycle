CDF                     description       &test version (by Edwin H. Sutanudjaja)     institution       DFG Utrecht University     title         eWaterCycle model output   history      �Wed Dec 10 22:09:18 2014: ncatted -a ancillary_variables,template_group,o,c,to be set uncertaintyTemplate.nc
Wed Dec 10 22:06:11 2014: ncrename -v precipitation_group,template_group exampleUncertaintyOut.nc
Wed Dec 10 22:05:04 2014: ncks -O -v precipitation_group exampleUncertainty.nc exampleUncertaintyOut.nc
Thu Dec  4 15:18:31 2014: ncatted -a standard_name,pr_error,o,c,precipitation_stderr precipitation_2001to2010.nc
Thu Dec  4 15:17:31 2014: ncatted -a ref,pr_error,o,c,http://www.uncertml.org/statistics/standard-deviation -a ref,precipitation,o,c,http://www.uncertml.org/statistics/mean precipitation_2001to2010.nc
Thu Dec  4 15:16:02 2014: ncatted -a ancillary_variables,precipitation,d,, precipitation_2001to2010.nc
Thu Dec  4 15:14:45 2014: ncks -A -o precipitation_2001to2010.nc -v precipitation_group ll.nc
Thu Dec  4 15:14:26 2014: ncatted -a standard_name,precipitation_group,d,, ll.nc
Thu Dec  4 15:14:17 2014: ncatted -a long_name,precipitation_group,d,, ll.nc
Thu Dec  4 15:13:49 2014: ncatted -a units,precipitation_group,d,, ll.nc
Thu Dec  4 14:06:36 2014: ncatted -a ref,precipitation_group,o,c,http://www.uncertml.org/statistics/statistics-collection ll.nc
Thu Dec  4 14:05:48 2014: ncatted -a ancillary_variables,precipitation_group,o,c,precipitation pr_error ll.nc
Thu Dec  4 14:05:06 2014: ncrename -v lat,precipitation_group ll.nc
Thu Dec  4 14:04:45 2014: ncwa -a lat -O -o ll.nc ll.nc
Thu Dec  4 14:04:29 2014: ncks -O -o ll.nc -v lat precipitation_2001to2010.nc
Tue Dec  2 13:41:32 2014: ncatted -a ref,pr_error,o,c,http://www.uncertml.org/statistics/mean precipitation_2001to2010.nc
Tue Dec  2 13:37:11 2014: ncatted -a primary_variables,global,o,c,precipitation precipitation_2001to2010.nc
Tue Dec  2 13:36:43 2014: ncatted -a Conventions,global,o,c,CF-1.5 UW-1.0 precipitation_2001to2010.nc
Tue Dec  2 12:06:31 2014: ncatted -a ancillary_variables,precipitation,o,c,pr_error -a standard_name,pr_error,o,c,precipitation standard_error precipitation_2001to2010.nc
Tue Dec  2 12:01:31 2014: ncks -A -o precipitation_2001to2010.nc -v pr_error ll.nc
Tue Dec  2 12:01:13 2014: ncrename -v precipitation,pr_error ll.nc
Tue Dec  2 12:01:03 2014: ncks -O -o ll.nc -v precipitation precipitation_2001to2010.nc      NCO       4.0.8      Conventions       CF-1.5 UW-1.0      primary_variables         precipitation      nco_openmp_thread_number                  template_group               ancillary_variables       	to be set      ref       8http://www.uncertml.org/statistics/statistics-collection        
�BE  