-module(problem1).
-export([solve/0, solve/1]).

solve() ->
    solve(1000).

solve(N) ->
    solve(N-1, 0).

solve(0, M) ->
    M;

solve(N, M) ->
    if N rem 3 == 0 ->
	    N,
	    solve(N-1, M+N);
       N rem 5 == 0 ->
	    N,    
	    solve(N-1, M+N);
       true ->
	    solve(N-1, M)
    end.  
