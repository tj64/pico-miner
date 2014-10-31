## * cffi.l --- parse SWIG (CFFI) output and create PicoLisp wrappers
##   :PROPERTIES:
##   :copyright: Thorsten Jolitz
##   :copyright-years: 2013+
##   :version:  0.9
##   :created:  <2013-05-16 Do>
##   :licence:  GPL 3 or later (free software)
##   :licence-url: http://www.gnu.org/licenses/
##   :author:   Thorsten Jolitz
##   :author_email: tjolitz AT gmail DOT com
##   :keywords: cffi picolisp native c c++
##   :END:

## ** Commentary

## SWIG (cffi) can be used to create =.lisp= files via

## # #+begin_src shell
## #  swig -cffi -c++ myfile.i
## # #+end_src

## calls on SWIG interface files (extended C or C++ header files with
## extension =.i=), which are then transformed into PicoLisp glue
## code.

## The task can then be splitted into the following subtasks:

##  1. copy all the =(cffi:defcfun ...)= definitions to a temporary
##  file

##  2. flatten the temporary file (extension =.flat=)
    
##  3. transform the =(cffi:defcfun ...)= definitions into PicoLisp
##  wrapper functions

##  4. save the temporary file as PicoLisp library
##  (extension =.l=)

## * Namespace

## create a cffi namespace
(symbols 'cffi 'pico)

## * Variables

## ** General Type Mappings

## (de *Btypes . '(char))
## (de *Itypes . '(int))
## (de *Ntypes . '(long))
## (de *Ctypes . '(char))
## (de *Stypes . '(char))
## (de *NUMtypes . '(char))
## (de *LSTtypes . '(struct))

## ** SWIG output-file delimiter

(de *SWIG_DELIM . ";;;SWIG wrapper code ends here")

## ** Library Specific Type Mappings

## * Helper Functions

(de kw2sym (Kw) (pack (cadr (split (chop Kw) ":"))))

## (de call-swig-in-tmp-dir (Header-file)
##    )

## ## get all relevant type mappings
## (de join-type-mappings Libs
##    (cons type-mappings Libs))

## (de map-types
##    '(((char) . B)
##      ((int) . I)
##      ((long) . N)
##      ((char) . C)
##      (() . C))

##  flatten a lisp file
(de flatten (Infile)
   (out (pack (car (split (chop Infile) ".")) ".flat")
      (in Infile
         (while (read) (println @)) ) ) )

## * Core Functions
## ** Parser

## Parse C/C++ header files and return an alist of signatures
(de parse-swig-cffi (Infile)
   (str (and (in Infile (and (from *SWIG_DELIM) (till EOF T))))))

## ** Convert and Wrap

## (cffi:defcfun ("_wrap_my_mod" my_mod) :int
##   (x :int)
##   (y :int))
(de def2lst (Ptree)
   (when (lst? Ptree)
      (mapcar
         '((Lst)
           (when (lst? Lst)
              (cons
                 (intern
                    (pack (last (split (chop (pop 'Lst)) "c"))) )
                 (cadr (pop 'Lst))
                 (pop 'Lst)
                 Lst ) ) )
         Ptree ) ) )

## (de wrap-in-fun)

## * Obsolete Stuff 

   ## (while
   ##    (from
   ##       ";;;SWIG wrapper code ends here^J"
   ##       "??")
   ##       (case @
   ##          ("(cffi:defcfun"
   ##             (when (from "Location: http://")
   ##                (let L (split (line) ':)
   ##                   (if (cdr L)
   ##                      (scrape
   ##                         (pack (pop 'L))
   ##                         (ifn (format (car (setq L (split (car L) '/))))
   ##                            80
   ##                            (pop 'L)
   ##                            @ )
   ##                         (glue '/ L) )
   ##                      (setq L (split (car L) '/))
   ##                      (scrape (pack (pop 'L)) 80 (glue '/ L)) ) ) ) )
   ##          ("<title>"
   ##             (setq *Title (ht:Pack (till "<"))) ) ) ) )


## cffi.l ends here
