;; * weka.el --- convert WEKA output to Org-mode file
;;   :PROPERTIES:
;;   :copyright: Thorsten_Jolitz
;;   :copyright-years: 2013
;;   :version:  1.0
;;   :licence:  MIT/X11
;;   :licence-url: http://opensource.org/licenses/MIT
;;   :part-of-emacs: no
;;   :authors: Thorsten_Jolitz, Carsten Dominik et.al.
;;   :author_email: tjolitz AT gmail DOT com
;;   :credits:  Org-mode_community
;;   :inspiration: org-table.el
;;   :keywords: WEKA Org-mode output conversion table
;; ;;   :git-repo: https://github.com/tj64/outshine.git
;; ;;   :git-clone: git://github.com/tj64/outshine.git
;;   :END:

;; ** Commentary

;; *** About weka.el

;; Convert the textual output of WEKA data mining functions into Org-mode
;; files that can be exported to various formats. In particular, put the
;; tabular results into Org-tables that can be programmatically used as lists.

;; *** Installation
;; Put the library in a place where Emacs can find it and put 

;; # #+begin_src emacs-lisp
;; # (require 'weka)
;; # #+end_src

;; into your .emacs file. 

;; *** Emacs Version

;; `weka.el' works with [GNU Emacs 24.2.1 (x86_64-unknown-linux-gnu, GTK+
;; Version 3.6.4) of 2013-01-20 on eric]. No attempts of testing with older
;; versions or other types of Emacs have been made (yet).

;; ** ChangeLog

;; | date          | author(s)       | version |
;; |---------------+-----------------+---------|
;; | <2013-05-28 > | Thorsten Jolitz |     0.9 |

;; * Requires

;; * Variables
;; ** Consts

(defconst weka-package-mappings
'(("as" .  "weka.associations")
  ("asgsp" .  "weka.associations.gsp")
  ("astertius" .  "weka.associations.tertius")
  ("atselect" .  "weka.attributeSelection")
  ("cf" .  "weka.classifiers")
  ("cfbay" .  "weka.classifiers.bayes")
  ("cfbayblr" .  "weka.classifiers.bayes.blr")
  ("cfbaynet" .  "weka.classifiers.bayes.net")
  ("cfbaynetest" .  "weka.classifiers.bayes.net.estimate")
  ("cfbaynetsearch" .  "weka.classifiers.bayes.net.search")
  ("cfbaynetsearchci" .  "weka.classifiers.bayes.net.search.ci")
  ("cfbaynetsearchfix" .  "weka.classifiers.bayes.net.search.fixed")
  ("cfbaynetsearchglob" .  "weka.classifiers.bayes.net.search.global")
  ("cfbaynetsearchloc" .  "weka.classifiers.bayes.net.search.local")
  ("cfeval" .  "weka.classifiers.evaluation")
  ("cffunc" .  "weka.classifiers.functions")
  ("cffuncneural" .  "weka.classifiers.functions.neural")
  ("cffuncpace" .  "weka.classifiers.functions.pace")
  ("cffuncsuppvec" .  "weka.classifiers.functions.supportVector")
  ("cflazy" .  "weka.classifiers.lazy")
  ("cflazykstar" .  "weka.classifiers.lazy.kstar")
  ("cfmeta" .  "weka.classifiers.meta")
  ("cfmetanestdicho" .  "weka.classifiers.meta.nestedDichotomies")
  ("cfmi" .  "weka.classifiers.mi")
  ("cfmisuppvec" .  "weka.classifiers.mi.supportVector")
  ("cfmisc" .  "weka.classifiers.misc")
  ("cfpmmlcons" .  "weka.classifiers.pmml.consumer")
  ("cfrules" .  "weka.classifiers.rules")
  ("cfrulespart" .  "weka.classifiers.rules.part")
  ("cftrees" .  "weka.classifiers.trees")
  ("cftreesadtree" .  "weka.classifiers.trees.adtree")
  ("cftreesft" .  "weka.classifiers.trees.ft")
  ("cftreesj48" .  "weka.classifiers.trees.j48")
  ("cftreeslmt" .  "weka.classifiers.trees.lmt")
  ("cftreesm5" .  "weka.classifiers.trees.m5")
  ("cfxml" .  "weka.classifiers.xml")
  ("cl" .  "weka.clusterers")
  ("clOPTdb" .  "weka.clusterers.forOPTICSAndDBScan.Databases")
  ("clOPTdataobj" .  "weka.clusterers.forOPTICSAndDBScan.DataObjects")
  ("clOPTutils" .  "weka.clusterers.forOPTICSAndDBScan.Utils")
  ("co" .  "weka.core")
  ("coconv" .  "weka.core.converters")
  ("colog" .  "weka.core.logging")
  ("comathex" .  "weka.core.mathematicalexpression")
  ("comatrix" .  "weka.core.matrix")
  ("conbsearch" .  "weka.core.neighboursearch")
  ("conbsearchballtrees" .  "weka.core.neighboursearch.balltrees")
  ("conbsearchcovertrees" .  "weka.core.neighboursearch.covertrees")
  ("conbsearchkdtrees" .  "weka.core.neighboursearch.kdtrees")
  ("copmml" .  "weka.core.pmml")
  ("costemmers" .  "weka.core.stemmers")
  ("cotoken" .  "weka.core.tokenizers")
  ("coxml" .  "weka.core.xml")
  ("dg" .  "weka.datagenerators")
  ("dgclassclass" .  "weka.datagenerators.classifiers.classification")
  ("dgclassregr" .  "weka.datagenerators.classifiers.regression")
  ("dgclust" .  "weka.datagenerators.clusterers")
  ("es" .  "weka.estimators")
  ("ex" .  "weka.experiment")
  ("exxml" .  "weka.experiment.xml")
  ("fi" .  "weka.filters")
  ("fisuattr" .  "weka.filters.supervised.attribute")
  ("fisuinst" .  "weka.filters.supervised.instance")
  ("fisunsuattr" .  "weka.filters.unsupervised.attribute")
  ("fiunsuinst" .  "weka.filters.unsupervised.instance")
  ("fiunsuinstsubset" .  "weka.filters.unsupervised.instance.subsetbyexpression"))

  "alist that maps WEKA package names (values) to function-names (keys)

The following GUI packages are not included:

| weka.clusterers.forOPTICSAndDBScan.OPTICS_GUI |
| weka.gui                                      |
| weka.gui.arffviewer                           |
| weka.gui.beans                                |
| weka.gui.beans.xml                            |
| weka.gui.boundaryvisualizer                   |
| weka.gui.experiment                           |
| weka.gui.explorer                             |
| weka.gui.graphvisualizer                      |
| weka.gui.hierarchyvisualizer                  |
| weka.gui.sql                                  |
| weka.gui.sql.event                            |
| weka.gui.streams                              |
| weka.gui.treevisualizer                       |
| weka.gui.visualize                            |
| weka.gui.visualize.plugins                    |

")


(defconst weka-preamble
  (concat
   "(symbols 'wk 'pico)\n\n"
   "(setq WEKAHOME (sys \"WEKAHOME\"))\n"
   "(setq CLASSPATH (pack WEKAHOME \"/weka.jar\"))\n"
   "(setq DATADIR (pack WEKAHOME \"/data\"))\n\n")
  "Defining the necessary path variables. 
You must `export $WEKAHOME=/path/to/wekahome/' in your .bashrc or so
for this to work.")


(defconst weka-glue-function-template
  (concat
   "(de %s (Cls Out Flag Data . @)\n"
   "   (let (ChopData (chop Data)\n"
   "         NormData (if (= \"/\" (car ChopData))\n"
   "                     (pack (cdr ChopData))\n"
   "                     Data ) )\n"
   "      (out Out\n"
   "         (in (filter bool\n"
   "                (list 'java\n"
   "                   \"-cp\"\n"
   "                   CLASSPATH\n"
   "                   (pack %s Cls)\n"
   "                   Flag\n"
   "                   (pack DATADIR \"/\" NormData)\n"
   "                   (while (args) (printsp (next))) ) )\n"
   "            (while (char) (prin @)) ) ) ) )\n\n")
  "Template for PicoLisp glue functions for WEKA.
To be used with the `format' function and `weka-package-mappings'.")

(defconst weka-file-comment-template
  (concat
   "# %s%s\n"
   "# (c) Software Lab. Alexander Burger\n\n")
  "File comment, to be used with `format'.")


;; ** Vars
;; ** Hooks
;; ** Faces
;; ** Customs
;; *** Custom Groups

(defgroup weka nil
  "Functions for working on WEKA output"
  :prefix "weka-"
  :group 'org)

;; *** Custom Vars

;; * Defuns

;; ** Functions

(defun weka-write-glue-functions (out-file)
  "Writes PicoLisp sources to OUT file based on `weka-package-mappings'."
  (interactive "F")
  (let ((out (expand-file-name out-file)))
    (cond
     ((file-exists-p out)
      (if (y-or-n-p (format "Overwrite existing file %s" out))
          (find-file out)
        (error "Out-file already exists"!)))
     (t (find-file out)))
    (erase-buffer)
    (insert
     (format weka-file-comment-template
             (time-stamp-string)
             (user-login-name)))
    (insert weka-preamble)
    (mapc
     (lambda (fun)
       (insert
        (format weka-glue-function-template
                (car fun) (cdr fun))))
     weka-package-mappings)))

;; ** Commands
;; * Keybindings.
;; * Run hooks and provide

;; (run-hooks 'weka-hook)

(provide 'weka)

;; Local Variables:
;; coding: utf-8
;; ispell-local-dictionary: "en_US"
;; End:

;; weka.el ends here
