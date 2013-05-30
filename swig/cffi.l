## * cffi.l --- transforming 'swig -cffi' lisp files into 'native' calls
##   :PROPERTIES:
##   :copyright: Thorsten Jolitz
##   :copyright-years: 2013
##   :version:  0.9
##   :created:  <2013-05-16 Do>
##   :licence:  MIT/X11
##   :licence-url: http://opensource.org/licenses/MIT
##   :author:   Thorsten Jolitz
##   :author_email: tjolitz AT gmail DOT com
##   :keywords: swig cffi picolisp native c c++
##   :END:

## ** Commentary

## This library implements code to transform =.lisp= files produced by

## # #+begin_src shell
## #  swig -cffi -c++ myfile.i
## # #+end_src

## calls on SWIG interface files (extended C or C++ header files with extension
## =.i=). The task can be splitted into  the following subtasks:

##  1. copy all the =(cffi:defcfun ...)= definitions to a temporary file
##  2. flatten the temporary file (extension =.flat=)
##  3. transform the =(cffi:defcfun ...)= definitions into PicoLisp wrapper
##     functions
##  4. save the temporary file as PicoLisp library (extension =.l=)

## ** Hint

## This source file is structured 'the outshine way'. Thus, as an Emacs user,
## when you activate =outline-minor-mode= with =outshine= extensions, you get
## the following functionality:

##  - outline navigation and structure editing
##  - headline fontification
##  - comment-section editing in temporary Org-mode buffers (via =outorg=)
##  - Org-mode property commands and API for easy property-editing
##  - superfast navigation and buffer remote-control (via =navi-mode=)

## See [[http://orgmode.org/worg/org-tutorials/org-outside-org.html][Org-mode
## outside Org-mode]] for more information, and this
## [[http://www.youtube.com/watch?v=MYJvQ-5dvK8][screencast]] on Youtube as a
## demonstration of the concept.

## * Namespace

## create a cffi namespace
(symbols 'cffi 'pico)

## * Helper Functions

## ## Scrape SWIG cffi .lisp output
## (de scrape (Infile)
##    (while
##       (from
##          "(cffi:defcfun"
##          "??")
##          (case @
##             ("(cffi:defcfun"
##                (when (from "Location: http://")
##                   (let L (split (line) ':)
##                      (if (cdr L)
##                         (scrape
##                            (pack (pop 'L))
##                            (ifn (format (car (setq L (split (car L) '/))))
##                               80
##                               (pop 'L)
##                               @ )
##                            (glue '/ L) )
##                         (setq L (split (car L) '/))
##                         (scrape (pack (pop 'L)) 80 (glue '/ L)) ) ) ) )
##             ("<title>"
##                (setq *Title (ht:Pack (till "<"))) ) ) ) )

## # ;;;SWIG wrapper code ends here

##  flatten a lisp file
(de flatten (Infile)
   (out (pack (car (split (chop Infile) ".")) ".flat")
      (in Infile
         (while (read) (println @)) ) ) )

## cffi.l ends here
