!#/bin/bash

###############################################################################
# Copyright 2020							                                                
# Author: Fagner Mendes							                                          
# License: GNU Public License						                                      
# Version: 1.1								                                                  
# Email: fagner.mendes22@gmail.com					                                  
###############################################################################

# This script can be repair the roundcube rpm and fix errors

rpm -e --nodeps cpanel-roundcubemail
/usr/local/cpanel/scripts/check_cpanel_rpms --fix
