
(cl:defclass account-t()
  ((ff-pointer :reader ff-pointer)))

(cl:defmethod (cl:setf parent) (arg0 (obj account-t))
  (account_t_parent_set (ff-pointer obj) arg0))

(cl:defmethod parent ((obj account-t))
  (account_t_parent_get (ff-pointer obj)))

(cl:defmethod (cl:setf name) (arg0 (obj account-t))
  (account_t_name_set (ff-pointer obj) arg0))

(cl:defmethod name ((obj account-t))
  (account_t_name_get (ff-pointer obj)))

(cl:defmethod (cl:setf note) (arg0 (obj account-t))
  (account_t_note_set (ff-pointer obj) arg0))

(cl:defmethod note ((obj account-t))
  (account_t_note_get (ff-pointer obj)))

(cl:defmethod (cl:setf depth) (arg0 (obj account-t))
  (account_t_depth_set (ff-pointer obj) arg0))

(cl:defmethod depth ((obj account-t))
  (account_t_depth_get (ff-pointer obj)))

(cl:defmethod (cl:setf accounts) (arg0 (obj account-t))
  (account_t_accounts_set (ff-pointer obj) arg0))

(cl:defmethod accounts ((obj account-t))
  (account_t_accounts_get (ff-pointer obj)))

(cl:defmethod (cl:setf posts) (arg0 (obj account-t))
  (account_t_posts_set (ff-pointer obj) arg0))

(cl:defmethod posts ((obj account-t))
  (account_t_posts_get (ff-pointer obj)))

(cl:defmethod (cl:setf deferred_posts) (arg0 (obj account-t))
  (account_t_deferred_posts_set (ff-pointer obj) arg0))

(cl:defmethod deferred_posts ((obj account-t))
  (account_t_deferred_posts_get (ff-pointer obj)))

(cl:defmethod (cl:setf value_expr) (arg0 (obj account-t))
  (account_t_value_expr_set (ff-pointer obj) arg0))

(cl:defmethod value_expr ((obj account-t))
  (account_t_value_expr_get (ff-pointer obj)))

(cl:defmethod (cl:setf _fullname) (arg0 (obj account-t))
  (account_t__fullname_set (ff-pointer obj) arg0))

(cl:defmethod _fullname ((obj account-t))
  (account_t__fullname_get (ff-pointer obj)))

(cl:defmethod initialize-instance :after ((obj account-t) &key (_parent account-t) _name _note)
  (setf (slot-value obj 'ff-pointer) (new_account_t (ff-pointer _parent) _name _note)))

(cl:defmethod initialize-instance :after ((obj account-t) &key (_parent account-t) _name)
  (setf (slot-value obj 'ff-pointer) (new_account_t (ff-pointer _parent) _name)))

(cl:defmethod initialize-instance :after ((obj account-t) &key (_parent account-t))
  (setf (slot-value obj 'ff-pointer) (new_account_t (ff-pointer _parent))))

(cl:defmethod initialize-instance :after ((obj account-t) &key)
  (setf (slot-value obj 'ff-pointer) (new_account_t)))

(cl:defmethod initialize-instance :after ((obj account-t) &key (other account-t))
  (setf (slot-value obj 'ff-pointer) (new_account_t (ff-pointer other))))

(cl:defmethod description ((self account-t))
  (account_t_description (ff-pointer self)))

(cl:defmethod fullname ((self account-t))
  (account_t_fullname (ff-pointer self)))

(cl:defmethod partial-name ((self account-t) (flat t))
  (account_t_partial_name (ff-pointer self) flat))

(cl:defmethod partial-name ((self account-t))
  (account_t_partial_name (ff-pointer self)))

(cl:defmethod add-account ((self account-t) (acct account-t))
  (account_t_add_account (ff-pointer self) (ff-pointer acct)))

(cl:defmethod remove-account ((self account-t) (acct account-t))
  (account_t_remove_account (ff-pointer self) (ff-pointer acct)))

(cl:defmethod find-account ((self account-t) name (auto_create t))
  (account_t_find_account (ff-pointer self) name auto_create))

(cl:defmethod find-account ((self account-t) name)
  (account_t_find_account (ff-pointer self) name))

(cl:defmethod find-account-re ((self account-t) regexp)
  (account_t_find_account_re (ff-pointer self) regexp))

(cl:defmethod accounts-begin ((self account-t))
  (account_t_accounts_begin (ff-pointer self)))

(cl:defmethod accounts-end ((self account-t))
  (account_t_accounts_end (ff-pointer self)))

(cl:defmethod add-post ((self account-t) post)
  (account_t_add_post (ff-pointer self) post))

(cl:defmethod add-deferred-post ((self account-t) uuid post)
  (account_t_add_deferred_post (ff-pointer self) uuid post))

(cl:defmethod apply-deferred-posts ((self account-t))
  (account_t_apply_deferred_posts (ff-pointer self)))

(cl:defmethod remove-post ((self account-t) post)
  (account_t_remove_post (ff-pointer self) post))

(cl:defmethod posts-begin ((self account-t))
  (account_t_posts_begin (ff-pointer self)))

(cl:defmethod posts-end ((self account-t))
  (account_t_posts_end (ff-pointer self)))

(cl:defmethod lookup ((self account-t) kind name)
  (account_t_lookup (ff-pointer self) kind name))

(cl:defmethod valid ((self account-t))
  (account_t_valid (ff-pointer self)))

(cl:defmethod (cl:setf xdata_) (arg0 (obj account-t))
  (account_t_xdata__set (ff-pointer obj) arg0))

(cl:defmethod xdata_ ((obj account-t))
  (account_t_xdata__get (ff-pointer obj)))

(cl:defmethod has-xdata ((self account-t))
  (account_t_has_xdata (ff-pointer self)))

(cl:defmethod clear-xdata ((self account-t))
  (account_t_clear_xdata (ff-pointer self)))

(cl:defmethod xdata ((self account-t))
  (account_t_xdata (ff-pointer self)))

(cl:defmethod xdata ((self account-t))
  (account_t_xdata (ff-pointer self)))

(cl:defmethod amount ((self account-t) expr)
  (account_t_amount (ff-pointer self) expr))

(cl:defmethod amount ((self account-t))
  (account_t_amount (ff-pointer self)))

(cl:defmethod total ((self account-t) expr)
  (account_t_total (ff-pointer self) expr))

(cl:defmethod total ((self account-t))
  (account_t_total (ff-pointer self)))

(cl:defmethod self-details ((self account-t) (gather_all t))
  (account_t_self_details (ff-pointer self) gather_all))

(cl:defmethod self-details ((self account-t))
  (account_t_self_details (ff-pointer self)))

(cl:defmethod family-details ((self account-t) (gather_all t))
  (account_t_family_details (ff-pointer self) gather_all))

(cl:defmethod family-details ((self account-t))
  (account_t_family_details (ff-pointer self)))

(cl:defmethod has-xflags ((self account-t) flags)
  (account_t_has_xflags (ff-pointer self) flags))

(cl:defmethod children-with-xdata ((self account-t))
  (account_t_children_with_xdata (ff-pointer self)))

(cl:defmethod children-with-flags ((self account-t) flags)
  (account_t_children_with_flags (ff-pointer self) flags))

