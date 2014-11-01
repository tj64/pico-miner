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

(de *Btypes .  '(:char))
(de *Itypes . '(:int))
(de *Ntypes . '(:long))
(de *Ctypes . '(:char))
(de *Stypes . '(:char))
(de *NUMtypes . '(:char))
(de *LSTtypes . '(:struct))

## ** SWIG output-file delimiter

(de *SWIG_DELIM . ";;;SWIG wrapper code ends here")
(de *SWIG_FUN . 'cffi:defcfun)
(de *SWIG_VAR . 'cffi:defcvar)

## ** Library Specific Type Mappings

## * Helper Functions

## keyword to sym
(de kw2sym (Kw) (pack (cadr (split (chop Kw) ":"))))

## call SWIG CFFI on C/C++ header file in tmp dir
(de swig (HeaderFile)
   (if (info HeaderFile)
      (let (bname (basename HeaderFile)
            basename-sans-extension
            (pack (car (split (chop bname) ".")))
            tmpdir (tmp "swig") )
         ## (call 'mkdir tmpdir)
         (call 'cp HeaderFile tmpdir)
         (call 'swig "-cffi" "-c++" (pack tmpdir bname) )
         (pack tmpdir basename-sans-extension ".lisp") )
      (msg HeaderFile " does not exist") ) )

##  flatten a lisp file
(de flatten (Infile)
   (out (pack (car (split (chop Infile) ".")) ".flat")
      (in Infile
         (while (read) (println @)) ) ) )

## * Core Functions

## USAGE:
## : (cffi~get-signatures (cffi~parse-swig (cffi~swig F)))
## -> ((var My_variable :double) (fun fact :int (n :int)) (fun my_mod :int (x :int) (y :int)) (fun get_time :string))

## ** Parse

## parse SWIG CFFI (.lisp) file and return an alist of signatures
(de parse-swig (Infile)
   (str (and (in Infile (and (from *SWIG_DELIM) (till EOF T))))))

## ** Convert and Wrap

## Convert a definition like
## : (cffi:defcfun ("_wrap_my_mod" my_mod) :int
## :   (x :int)
## :   (y :int))
## into signature for 'native'
(de convert-definition (Def)
   (let (Nm (cadr (pop 'Def))
         RetSpec (prog
                    (case (pop 'Def)
                       (`*Btypes ''B)
                       (`*Itypes ''I)
                       (`*Ntypes ''N)
                       (`*Ctypes ''C)
                       (`*Stypes ''S)
                       (`*NUMtypes ())
                       (`*LSTtypes ())
                       (T (msg "Unknown type")) ) )
         Args (mapcar
                 '((Arg)
                   (let (Nm (car Arg)
                         Typ (cadr Arg) 
                         ChopNm (chop Nm)
                         ArgNm (pack
                                  (uppc (car ChopNm))
                                  (cdr ChopNm) Typ ) )
                      (list
                         ArgNm
                         (case Typ
                            (`*Btypes ''B)
                            (`*Itypes ''I)
                            (`*Ntypes ''N)
                            (`*Ctypes ''C)
                            (`*Stypes ''S)
                            (`*NUMtypes ())
                            (`*LSTtypes ())
                            (T (msg "Unknown type")) ) ) ) )
                 Def ) )
      (list Nm RetSpec Args) ) )

## Wrap signature in glue code with 'native' call
(de wrap-in-fun (Sig Lib)
   (list
      'de (car Sig) (mapcar 'pop (cddr Sig))
      (list 'native Lib (cadr Sig) (cddr Sig) ) ) )

(de map-defs (Ptree))

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

## ## get all relevant type mappings
## (de join-type-mappings Libs
##    (cons type-mappings Libs))

## (de map-types
##    '(((char) . B)
##      ((int) . I)
##      ((long) . N)
##      ((char) . C)
##      (() . C))

## (de get-signatures (Ptree)
##    (when (lst? Ptree)
##       (mapcar
##          '((Lst)
##            (when (lst? Lst)
##               (cons
##                  (intern
##                     (pack (last (split (chop (pop 'Lst)) "c"))) )
##                  (cadr (pop 'Lst))
##                  (pop 'Lst)
##                  Lst ) ) )
##          Ptree ) ) )


## cffi.l ends here
