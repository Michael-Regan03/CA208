book(illiad, homer, study, 500).
book(c, richie, study, 150).
book(ntbible, sams, refrence, 480).
book(montypython, cleese, comedy, 300).
book(oythanolgorithms, david, study, 225).
book(lilacbus, binchey, fiction, 200).
book(hamlet, shakespere, drama, 250).
book(leisureBook, shakespere, leisure, 14).

buildlibrary(Lib):- findall(book(Title, Author, Genre, Size), book(Title, Author, Genre, Size), Lib).

is_holiday(book(_,_,G,S)):- G\== study, G\== reference, S < 400.


holiday(B,[B | _]):- is_holiday(B).
holiday(B , [_ | T]):- holiday(B,T).

is_leisure(book(_,_,G,_)):- G == leisure.

leisure(B, [B | _]):-is_leisure(B).
leisure(B,[_ | T]):-leisure(B,T).

direct_north(a,f).
direct_north(b,g).
direct_north(c,h).
direct_north(d,i).
direct_north(e,j).
direct_north(f,k).
direct_north(g,l).
direct_north(h,m).
direct_north(i,n).
direct_north(j,o).
direct_north(k,p).
direct_north(l,q).
direct_north(m,r).
direct_north(n,s).
direct_north(o,t).

direct_west(a,b).
direct_west(b,c).
direct_west(c,d).
direct_west(d,e).
direct_west(f,g).
direct_west(g,h).
direct_west(h,i).
direct_west(i,j).
direct_west(k,l).
direct_west(l,m).
direct_west(m,n).
direct_west(n,o).
direct_west(p,q).
direct_west(q,r).
direct_west(r,s).
direct_west(s,t).

direct_south(X,Y) :- direct_north(Y,X).
direct_east(X,Y) :- direct_west(Y,X).

north(X,Y) :- direct_north(X,Y).
north(X,Y) :- direct_north(X,Z), north(Z,Y).

south(X,Y) :- direct_south(X,Y).
south(X,Y) :- direct_south(X,Z), south(Z,Y).

west(X,Y) :- direct_west(X,Y).
west(X,Y) :- direct_west(X,Z), west(Z,Y).

east(X,Y) :- direct_east(X,Y).
east(X,Y) :- direct_east(X,Z), east(Z,Y).

north_west(X,Y) :- north(X,Z), west(Z,Y).

north_east(X,Y) :- north(X,Z), east(Z,Y).

south_west(X,Y) :- south(X,Z), west(Z,Y).

south_east(X,Y) :- south(X,Z), east(Z,Y).


























