(symbols 'weka 'pico)

# default environment 
(setq WEKAHOME (sys "WEKAHOME"))
(setq CLASSPATH (pack WEKAHOME "/weka.jar"))
(setq DATADIR (pack WEKAHOME "/data"))
(setq WEKAFILES (pack (sys "HOME") "/wekafiles"))
(setq PICOMINER  (pack WEKAFILES "/picominer"))
(setq CLASSES (pack PICOMINER "/classes"))
(setq WEKAURL (pack "http://weka.sourceforge.net/"
                 "doc.stable/allclasses-noframe.html") )


# weka classes
(de classes (ForceUpdate)
  (unless (info PICOMINER)
     (call 'mkdir "-p" PICOMINER) )
  (out CLASSES
     (in (list "wget" "--no-http-keep-alive" "--no-check-certificate"
             "-O" "-" "-o" "/dev/null" WEKAURL)
        (while 
           (from
              "HREF=\"weka/")
                 (let
                    (Lst (mapcar pack (split (chop (till "\"")) "/" ))
                     PkgName "weka/")
                 (unless
                    (= (car  Lst) "gui")
                    (print
                       (cons
                          (last
                             (mapcar
                                '((X) (setq PkgName (pack PkgName X "/")))
                                (car (split (head -1 Lst) ".")) ) )
                          (let ClsNameAsLst
                                (mapcar
                                   pack
                                   (head -1 (split (chop (last Lst)) ".")) )
                                (pack
                                   (chop
                                      (list
                                         (mapcar
                                            '((Word) (pack Word "."))
                                            (head -1 ClsNameAsLst) )
                                         (last ClsNameAsLst) ) ) ) ) ) ) ) ) ) ) ) )


##                        (setq Cls "Weka Classes")
##                        (put 'Cls
##                           (car (last Lst))


## (de run ()
##    (unless (info CLASSES)
##       (classes) )
##    (out
##       (prin
##          "This is a test for wk\n"
##          "WekaHome is: " WEKAHOME "\n"
##          "ClassPath is: " CLASSPATH "\n"
##          # "DataDir is: " DATADIR
##  ) ) )
