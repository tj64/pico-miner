%module Rinterface                                                                                
%{                                                                                             
/* Includes the header in the wrapper code */                                                  
/* #include "Rinterface.h"         */
#include "/usr/include/R/Rinterface.h"                                                                                                                                                
%}                                                                                             
                                                                                                                     
/* Parse the header file to generate wrappers */                                               
%include "/usr/include/R/Rinterface.h"
