;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 3.0.2
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.


;;;SWIG wrapper code starts here

(cl:defmacro defanonenum (cl:&body enums)
   "Converts anonymous enums to defconstants."
  `(cl:progn ,@(cl:loop for value in enums
                        for index = 0 then (cl:1+ index)
                        when (cl:listp value) do (cl:setf index (cl:second value)
                                                          value (cl:first value))
                        collect `(cl:defconstant ,value ,index))))

(cl:eval-when (:compile-toplevel :load-toplevel)
  (cl:unless (cl:fboundp 'swig-lispify)
    (cl:defun swig-lispify (name flag cl:&optional (package cl:*package*))
      (cl:labels ((helper (lst last rest cl:&aux (c (cl:car lst)))
                    (cl:cond
                      ((cl:null lst)
                       rest)
                      ((cl:upper-case-p c)
                       (helper (cl:cdr lst) 'upper
                               (cl:case last
                                 ((lower digit) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:lower-case-p c)
                       (helper (cl:cdr lst) 'lower (cl:cons (cl:char-upcase c) rest)))
                      ((cl:digit-char-p c)
                       (helper (cl:cdr lst) 'digit 
                               (cl:case last
                                 ((upper lower) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:char-equal c #\_)
                       (helper (cl:cdr lst) '_ (cl:cons #\- rest)))
                      (cl:t
                       (cl:error "Invalid character: ~A" c)))))
        (cl:let ((fix (cl:case flag
                        ((constant enumvalue) "+")
                        (variable "*")
                        (cl:t ""))))
          (cl:intern
           (cl:concatenate
            'cl:string
            fix
            (cl:nreverse (helper (cl:concatenate 'cl:list name) cl:nil cl:nil))
            fix)
           package))))))

;;;SWIG wrapper code ends here


(cl:defconstant __STDC_WANT_IEC_60559_TYPES_EXT__ 1)

(cl:defconstant R_VERSION_STRING "3.1.1")

(cl:defconstant HAVE_EXPM1 1)

(cl:defconstant HAVE_HYPOT 1)

(cl:defconstant HAVE_LOG1P 1)

(cl:defconstant HAVE_WORKING_LOG1P 1)

(cl:defconstant M_E 2.718281828459045235360287471353d0)

(cl:defconstant M_LOG2E 1.442695040888963407359924681002d0)

(cl:defconstant M_LOG10E 0.434294481903251827651128918917d0)

(cl:defconstant M_LN2 0.693147180559945309417232121458d0)

(cl:defconstant M_LN10 2.302585092994045684017991454684d0)

(cl:defconstant M_PI 3.141592653589793238462643383280d0)

(cl:defconstant M_2PI 6.283185307179586476925286766559d0)

(cl:defconstant M_PI_2 1.570796326794896619231321691640d0)

(cl:defconstant M_PI_4 0.785398163397448309615660845820d0)

(cl:defconstant M_1_PI 0.318309886183790671537767526745d0)

(cl:defconstant M_2_PI 0.636619772367581343075535053490d0)

(cl:defconstant M_2_SQRTPI 1.128379167095512573896158903122d0)

(cl:defconstant M_SQRT2 1.414213562373095048801688724210d0)

(cl:defconstant M_SQRT1_2 0.707106781186547524400844362105d0)

(cl:defconstant M_SQRT_3 1.732050807568877293527446341506d0)

(cl:defconstant M_SQRT_32 5.656854249492380195206754896838d0)

(cl:defconstant M_LOG10_2 0.301029995663981195213738894724d0)

(cl:defconstant M_SQRT_PI 1.772453850905516027298167483341d0)

(cl:defconstant M_1_SQRT_2PI 0.398942280401432677939946059934d0)

(cl:defconstant M_SQRT_2dPI 0.797884560802865355879892119869d0)

(cl:defconstant M_LN_2PI 1.837877066409345483560659472811d0)

(cl:defconstant M_LN_SQRT_PI 0.572364942924700087071713675677d0)

(cl:defconstant M_LN_SQRT_2PI 0.918938533204672741780329736406d0)

(cl:defconstant M_LN_SQRT_PId2 0.225791352644727432363097614947d0)

(cffi:defcfun ("R_pow" R_pow) :double
  (x :double)
  (y :double))

(cffi:defcfun ("R_pow_di" R_pow_di) :double
  (arg0 :double)
  (arg1 :int))

(cffi:defcfun ("norm_rand" norm_rand) :double)

(cffi:defcfun ("unif_rand" unif_rand) :double)

(cffi:defcfun ("exp_rand" exp_rand) :double)

(cffi:defcfun ("Rf_dnorm4" Rf_dnorm4) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pnorm5" Rf_pnorm5) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qnorm5" Rf_qnorm5) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rnorm" Rf_rnorm) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_pnorm_both" Rf_pnorm_both) :void
  (arg0 :double)
  (arg1 :pointer)
  (arg2 :pointer)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_dunif" Rf_dunif) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_punif" Rf_punif) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qunif" Rf_qunif) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_runif" Rf_runif) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dgamma" Rf_dgamma) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pgamma" Rf_pgamma) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qgamma" Rf_qgamma) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rgamma" Rf_rgamma) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_log1pmx" Rf_log1pmx) :double
  (arg0 :double))

(cffi:defcfun ("log1pexp" log1pexp) :double
  (arg0 :double))

(cffi:defcfun ("Rf_lgamma1p" Rf_lgamma1p) :double
  (arg0 :double))

(cffi:defcfun ("Rf_logspace_add" Rf_logspace_add) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_logspace_sub" Rf_logspace_sub) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dbeta" Rf_dbeta) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pbeta" Rf_pbeta) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qbeta" Rf_qbeta) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rbeta" Rf_rbeta) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dlnorm" Rf_dlnorm) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_plnorm" Rf_plnorm) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qlnorm" Rf_qlnorm) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rlnorm" Rf_rlnorm) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dchisq" Rf_dchisq) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int))

(cffi:defcfun ("Rf_pchisq" Rf_pchisq) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_qchisq" Rf_qchisq) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_rchisq" Rf_rchisq) :double
  (arg0 :double))

(cffi:defcfun ("Rf_dnchisq" Rf_dnchisq) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pnchisq" Rf_pnchisq) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qnchisq" Rf_qnchisq) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rnchisq" Rf_rnchisq) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_df" Rf_df) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pf" Rf_pf) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qf" Rf_qf) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rf" Rf_rf) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dt" Rf_dt) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int))

(cffi:defcfun ("Rf_pt" Rf_pt) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_qt" Rf_qt) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_rt" Rf_rt) :double
  (arg0 :double))

(cffi:defcfun ("Rf_dbinom" Rf_dbinom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pbinom" Rf_pbinom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qbinom" Rf_qbinom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rbinom" Rf_rbinom) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("rmultinom" rmultinom) :void
  (arg0 :int)
  (arg1 :pointer)
  (arg2 :int)
  (arg3 :pointer))

(cffi:defcfun ("Rf_dcauchy" Rf_dcauchy) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pcauchy" Rf_pcauchy) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qcauchy" Rf_qcauchy) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rcauchy" Rf_rcauchy) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dexp" Rf_dexp) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int))

(cffi:defcfun ("Rf_pexp" Rf_pexp) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_qexp" Rf_qexp) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_rexp" Rf_rexp) :double
  (arg0 :double))

(cffi:defcfun ("Rf_dgeom" Rf_dgeom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int))

(cffi:defcfun ("Rf_pgeom" Rf_pgeom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_qgeom" Rf_qgeom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_rgeom" Rf_rgeom) :double
  (arg0 :double))

(cffi:defcfun ("Rf_dhyper" Rf_dhyper) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int))

(cffi:defcfun ("Rf_phyper" Rf_phyper) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_qhyper" Rf_qhyper) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_rhyper" Rf_rhyper) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double))

(cffi:defcfun ("Rf_dnbinom" Rf_dnbinom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pnbinom" Rf_pnbinom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qnbinom" Rf_qnbinom) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rnbinom" Rf_rnbinom) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dnbinom_mu" Rf_dnbinom_mu) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pnbinom_mu" Rf_pnbinom_mu) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qnbinom_mu" Rf_qnbinom_mu) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("rnbinom_mu" rnbinom_mu) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dpois" Rf_dpois) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int))

(cffi:defcfun ("Rf_ppois" Rf_ppois) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_qpois" Rf_qpois) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_rpois" Rf_rpois) :double
  (arg0 :double))

(cffi:defcfun ("Rf_dweibull" Rf_dweibull) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pweibull" Rf_pweibull) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qweibull" Rf_qweibull) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rweibull" Rf_rweibull) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dlogis" Rf_dlogis) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_plogis" Rf_plogis) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qlogis" Rf_qlogis) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rlogis" Rf_rlogis) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dnbeta" Rf_dnbeta) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int))

(cffi:defcfun ("Rf_pnbeta" Rf_pnbeta) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_qnbeta" Rf_qnbeta) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_rnbeta" Rf_rnbeta) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double))

(cffi:defcfun ("Rf_dnf" Rf_dnf) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int))

(cffi:defcfun ("Rf_pnf" Rf_pnf) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_qnf" Rf_qnf) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_dnt" Rf_dnt) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pnt" Rf_pnt) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qnt" Rf_qnt) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_ptukey" Rf_ptukey) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_qtukey" Rf_qtukey) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :double)
  (arg4 :int)
  (arg5 :int))

(cffi:defcfun ("Rf_dwilcox" Rf_dwilcox) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int))

(cffi:defcfun ("Rf_pwilcox" Rf_pwilcox) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_qwilcox" Rf_qwilcox) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :int)
  (arg4 :int))

(cffi:defcfun ("Rf_rwilcox" Rf_rwilcox) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_dsignrank" Rf_dsignrank) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int))

(cffi:defcfun ("Rf_psignrank" Rf_psignrank) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_qsignrank" Rf_qsignrank) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :int)
  (arg3 :int))

(cffi:defcfun ("Rf_rsignrank" Rf_rsignrank) :double
  (arg0 :double))

(cffi:defcfun ("Rf_gammafn" Rf_gammafn) :double
  (arg0 :double))

(cffi:defcfun ("Rf_lgammafn" Rf_lgammafn) :double
  (arg0 :double))

(cffi:defcfun ("Rf_lgammafn_sign" Rf_lgammafn_sign) :double
  (arg0 :double)
  (arg1 :pointer))

(cffi:defcfun ("Rf_dpsifn" Rf_dpsifn) :void
  (arg0 :double)
  (arg1 :int)
  (arg2 :int)
  (arg3 :int)
  (arg4 :pointer)
  (arg5 :pointer)
  (arg6 :pointer))

(cffi:defcfun ("Rf_psigamma" Rf_psigamma) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_digamma" Rf_digamma) :double
  (arg0 :double))

(cffi:defcfun ("Rf_trigamma" Rf_trigamma) :double
  (arg0 :double))

(cffi:defcfun ("Rf_tetragamma" Rf_tetragamma) :double
  (arg0 :double))

(cffi:defcfun ("Rf_pentagamma" Rf_pentagamma) :double
  (arg0 :double))

(cffi:defcfun ("Rf_beta" Rf_beta) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_lbeta" Rf_lbeta) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_choose" Rf_choose) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_lchoose" Rf_lchoose) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_bessel_i" Rf_bessel_i) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double))

(cffi:defcfun ("Rf_bessel_j" Rf_bessel_j) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_bessel_k" Rf_bessel_k) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double))

(cffi:defcfun ("Rf_bessel_y" Rf_bessel_y) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_bessel_i_ex" Rf_bessel_i_ex) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :pointer))

(cffi:defcfun ("Rf_bessel_j_ex" Rf_bessel_j_ex) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :pointer))

(cffi:defcfun ("Rf_bessel_k_ex" Rf_bessel_k_ex) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :double)
  (arg3 :pointer))

(cffi:defcfun ("Rf_bessel_y_ex" Rf_bessel_y_ex) :double
  (arg0 :double)
  (arg1 :double)
  (arg2 :pointer))

(cffi:defcfun ("Rf_pythag" Rf_pythag) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_imax2" Rf_imax2) :int
  (arg0 :int)
  (arg1 :int))

(cffi:defcfun ("Rf_imin2" Rf_imin2) :int
  (arg0 :int)
  (arg1 :int))

(cffi:defcfun ("Rf_fmax2" Rf_fmax2) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_fmin2" Rf_fmin2) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_sign" Rf_sign) :double
  (arg0 :double))

(cffi:defcfun ("Rf_fprec" Rf_fprec) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_fround" Rf_fround) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_fsign" Rf_fsign) :double
  (arg0 :double)
  (arg1 :double))

(cffi:defcfun ("Rf_ftrunc" Rf_ftrunc) :double
  (arg0 :double))

(cffi:defcfun ("cospi" cospi) :double
  (arg0 :double))

(cffi:defcfun ("sinpi" sinpi) :double
  (arg0 :double))

(cffi:defcfun ("tanpi" tanpi) :double
  (arg0 :double))

