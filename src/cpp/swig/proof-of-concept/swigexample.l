## # cffi code
## (cffi:defcvar ("My_variable" My_variable)
##  :double)

## # cffi code
## (cffi:defcfun ("_wrap_fact" fact) :int
##   (n :int))

(native "./swigexample.so" "_wrap_fact" 'I 3)

## # cffi code
## (cffi:defcfun ("_wrap_my_mod" my_mod) :int
##   (x :int)
##   (y :int))

(native "./swigexample.so" "_wrap_my_mod" 'I 2 4) 

## # cffi code
## (cffi:defcfun ("_wrap_get_time" get_time) :string)

(native "./swigexample.so" "_wrap_get_time" 'S)
