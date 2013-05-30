# 2013-05-30 Don 19:38 tj on hostnametj
# (c) Software Lab. Alexander Burger

(symbols 'wk 'pico)

(setq WEKAHOME (sys "WEKAHOME"))
(setq CLASSPATH (pack WEKAHOME "/weka.jar"))
(setq DATADIR (pack WEKAHOME "/data"))

(de as (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.associations Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de asgsp (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.associations.gsp Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de astertius (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.associations.tertius Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de atselect (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.attributeSelection Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cf (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbay (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbayblr (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.blr Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbaynet (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.net Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbaynetest (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.net.estimate Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbaynetsearch (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.net.search Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbaynetsearchci (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.net.search.ci Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbaynetsearchfix (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.net.search.fixed Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbaynetsearchglob (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.net.search.global Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfbaynetsearchloc (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.bayes.net.search.local Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfeval (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.evaluation Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cffunc (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.functions Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cffuncneural (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.functions.neural Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cffuncpace (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.functions.pace Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cffuncsuppvec (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.functions.supportVector Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cflazy (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.lazy Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cflazykstar (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.lazy.kstar Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfmeta (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.meta Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfmetanestdicho (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.meta.nestedDichotomies Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfmi (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.mi Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfmisuppvec (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.mi.supportVector Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfmisc (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.misc Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfpmmlcons (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.pmml.consumer Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfrules (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.rules Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfrulespart (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.rules.part Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cftrees (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.trees Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cftreesadtree (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.trees.adtree Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cftreesft (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.trees.ft Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cftreesj48 (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.trees.j48 Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cftreeslmt (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.trees.lmt Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cftreesm5 (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.trees.m5 Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cfxml (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.classifiers.xml Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cl (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.clusterers Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de clOPTdb (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.clusterers.forOPTICSAndDBScan.Databases Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de clOPTdataobj (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.clusterers.forOPTICSAndDBScan.DataObjects Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de clOPTutils (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.clusterers.forOPTICSAndDBScan.Utils Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de co (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de coconv (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.converters Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de colog (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.logging Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de comathex (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.mathematicalexpression Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de comatrix (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.matrix Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de conbsearch (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.neighboursearch Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de conbsearchballtrees (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.neighboursearch.balltrees Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de conbsearchcovertrees (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.neighboursearch.covertrees Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de conbsearchkdtrees (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.neighboursearch.kdtrees Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de copmml (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.pmml Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de costemmers (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.stemmers Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de cotoken (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.tokenizers Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de coxml (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.core.xml Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de dg (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.datagenerators Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de dgclassclass (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.datagenerators.classifiers.classification Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de dgclassregr (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.datagenerators.classifiers.regression Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de dgclust (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.datagenerators.clusterers Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de es (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.estimators Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de ex (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.experiment Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de exxml (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.experiment.xml Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de fi (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.filters Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de fisuattr (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.filters.supervised.attribute Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de fisuinst (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.filters.supervised.instance Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de fisunsuattr (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.filters.unsupervised.attribute Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de fiunsuinst (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.filters.unsupervised.instance Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

(de fiunsuinstsubset (Cls Out Flag Data . @)
   (let (ChopData (chop Data)
         NormData (if (= "/" (car ChopData))
                     (pack (cdr ChopData))
                     Data ) )
      (out Out
         (in (filter bool
                (list 'java
                   "-cp"
                   CLASSPATH
                   (pack weka.filters.unsupervised.instance.subsetbyexpression Cls)
                   Flag
                   (pack DATADIR "/" NormData)
                   (while (args) (printsp (next))) ) )
            (while (char) (prin @)) ) ) ) )

