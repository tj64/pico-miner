%module Rinternals                                                                                
%{                                                                                             
/* Includes the header in the wrapper code */                                                  
/* #include "Rinternals.h"         */
#include "/usr/include/R/Rinternals.h"                                                                                                                                                
%}                                                                                             
                                                                                                                     
/* Parse the header file to generate wrappers */                                               
%include "/usr/include/R/Rinternals.h"
