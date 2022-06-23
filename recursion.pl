parent(pam, bob).
parent(bob, ann).
parent(ann, pat).
parent(pat, jim).

ancestor(X, Z):- parent(X, Z).
ancestor(X, Z):- parent(X, Y), ancestor(Y, Z).

