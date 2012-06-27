%%%===================================================================
%%% Records
%%%===================================================================

-record(yz_index_cmd, {
          doc :: doc(),
          req_id :: non_neg_integer()
         }).

-record(solr_vclocks, {
          more=false :: boolean(),
          continuation :: base64() | none,
          pairs :: [{DocID::binary(), VClock::base64()}]
         }).

%% A reference to a merkle tree.
-record(tree_ref, {
          name :: tree_name(),
          pid :: pid(),
          ref :: reference()
         }).

%%%===================================================================
%%% Types
%%%===================================================================

-type name() :: atom().
-type value() :: term().
-type field() :: {name(), value()}.
-type fields() :: [field()].
-type doc() :: {doc, fields()}.
-type base64() :: base64:ascii_string().
-type solr_vclocks() :: #solr_vclocks{}.
-type iso8601() :: string().
-type tree_name() :: atom().
-type tree_ref() :: #tree_ref{}.


%%%===================================================================
%%% Macros
%%%===================================================================

-define(YZ_INDEX_CMD, #yz_index_cmd).
-define(YZ_SVC_NAME, yokozuna).
-define(YZ_VNODE_MASTER, yokozuna_vnode_master).
