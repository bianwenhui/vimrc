-module(hi_server).

-behaviour(gen_server).

%% API
-export([
    ]).

%% for tmp
-compile(export_all).

%% gen_server callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
	 terminate/2, code_change/3]).

-define(SERVER, ?MODULE). 

-record(state, {}).

%%%===================================================================
%%% API
%%%===================================================================

start_link() ->
    gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

%%%===================================================================
%%% gen_server callbacks
%%%===================================================================

init([]) ->
    {ok, #state{}}.

handle_call(_Request, _From, State) -> 
    {reply, ok, State}.

handle_cast(_Msg, State) -> 
    {noreply, State}.

handle_info(_Info, State) -> 
    {stop, normal, State}.

terminate(_Reason, _State) -> 
    io:format('terminate ~p ~p ~n', [_Reason, _State]).
    
code_change(_OldVsn, State, _Extra) -> 
    {ok, State}.

%%%===================================================================
%%% Internal functions
%%%===================================================================


%%%===================================================================
%%% Test functions
%%%===================================================================
