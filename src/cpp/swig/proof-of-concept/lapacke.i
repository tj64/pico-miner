%module lapacke
%{                                                                                             
/* Includes the header in the wrapper code */                                                  
#include "/usr/include/lapacke.h"                                                                            
%}                                                                                             
                                                                                                                     
/* Parse the header file to generate wrappers */                                               
%include "/usr/include/lapacke.h"                                                                            
