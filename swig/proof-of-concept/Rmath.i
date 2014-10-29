%module Rmath                                                                                
%{                                                                                             
/* Includes the header in the wrapper code */                                                  
#include "Rmath.h"                                                                            
%}                                                                                             
                                                                                                                     
/* Parse the header file to generate wrappers */                                               
%include "Rmath.h"                                                                            
