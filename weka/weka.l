# create namespace
(symbols 'weka 'pico)

# default environment 
(setq *Weka "WEKA classes")
(setq WEKAHOME (sys "WEKAHOME"))
(setq CLASSPATH (pack WEKAHOME "/weka.jar"))
(setq DATADIR (pack WEKAHOME "/data"))
(setq WEKAFILES (pack (sys "HOME") "/wekafiles"))
(setq PICOMINER  (pack WEKAFILES "/picominer"))
(setq CLASSES (pack PICOMINER "/classes"))
(setq WEKAURL (pack "http://weka.sourceforge.net/"
                 "doc.stable/allclasses-noframe.html") )

# update WEKA classes
(de updateClasses (ForceUpdate)
   # check if file 'classes' exists and should be updated
   (let (Classes? (info CLASSES))
      (if (and (not ForceUpdate) Classes?)
         # exists but no update
         (print
            (pack
               "info CLASSES: " (car Classes?) " Bytes, "
               "last modified " (stamp (cadr Classes?) (cddr Classes?)) ) )
         # does not exist or update forced
         (unless (info PICOMINER)
            (call 'mkdir "-p" PICOMINER) )
         (out CLASSES
            (prog
               # open enclosing list
               (prin "(")
               # get all WEKA classes
               (in (list "wget" "--no-http-keep-alive" "--no-check-certificate"
                      "-O" "-" "-o" "/dev/null" WEKAURL )
                  (while (from "HREF=\"weka/" )
                     (let
                        (Lst (mapcar pack (split (chop (till "\"")) "/" ))
                         PkgName "weka/" )
                        (unless
                           # exclude GUI classes
                           (= (car  Lst) "gui")
                           (print
                              (cons
                                 # extract package name
                                 (last
                                    (mapcar
                                       '((X) (setq PkgName (pack PkgName X "/")))
                                       (car (split (head -1 Lst) ".")) ) )
                                 # extract class name
                                 (let ClsNameAsLst
                                    (mapcar pack
                                       (head -1 (split (chop (last Lst)) ".")) )
                                    (pack
                                       (chop

                                          (list
                                             (mapcar
                                                '((Word) (pack Word "."))
                                                (head -1 ClsNameAsLst) )
                                             (last ClsNameAsLst) ) ) ) ) ) ) ) ) ) )
               # close enclosing list
        (prin ")") ) ) ) ) )

# update WEKA classes and assign them as property list to symbol '*Weka'
(de readClasses ()
   (updateClasses)
   (in CLASSES
      (putl '*Weka (read)) ) )

# call readClasses
(readClasses)

# (show '*Weka)

## # run WEKA 
## (de run ()
##    (out
##       (prin
##          "This is a test for wk\n"
##          "WekaHome is: " WEKAHOME "\n"
##          "ClassPath is: " CLASSPATH "\n"
##          # "DataDir is: " DATADIR
##  ) ) )
