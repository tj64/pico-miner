%module account                                                                                
%{                                                                                             
/* Includes the header in the wrapper code */                                                  
/* #include "Rinterface.h"         */
#include "/home/tj/gitclone/ledger/src/account.h"
%}
 
/* Parse the header file to generate wrappers */                                               
%include "/home/tj/gitclone/ledger/src/account.h"
