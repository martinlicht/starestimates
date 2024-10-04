https://math.stackexchange.com/questions/861674/decompose-a-2d-arbitrary-transform-into-only-scaling-and-rotation

- how much redundancy is achievable?
- do you have a preference for facet or face ? 

- [x] replace the shape notation by C_ ...
- [ ] scalars: condense the discussion even further
- [x] introduce combinatorial triangulations, use literature referals
- [ ] sobolev section: check later that everything needed is there 
- [ ] potentials section: sigma notation for potential operators, rewrite
- [ ] potentials section: additional constants notation for potential operators
- [ ] potentials section: adapt and unify notation/tex
- [ ] reflection: singular values listed in reflection section
- [ ] shape: reduce the shape constant discussion once everything else is in place
- [ ] numerics: create a spanning tree and start computing the scalar estimate 
- [ ] opnorm and vecnorm
- [ ] final: complete the final estimate, use recursion 
    - [ ] in a shellable triangulation, the interior subsimplices of a star already have got stars 
- [ ] We should use clarify face vs facet
- [ ] should all triangulations be n dimensional ? 
- [ ] remove \Faces or use it all over the place 
- [ ] U_T
- [ ] after recursive estimates, write down the complete bound 
- [ ] retire the separation theorem for simplices with that halfplane 
- [ ] \mwl{MV: It might be good to synchronize the indices between the shellability definitions in Section~\ref{section:shellability} and Theorems~\ref{theorem:poincarefriedrichsestimate:grad}, \ref{theorem:poincarefriedrichsestimate:exterior}, \ref{theorem:poincarefriedrichsestimate:exterior:contraction}.} \mwl{Compare with theorem earlier}

Revision: 
- [x] header
- [x] title and abstract, macros 
- [x] library + bib style 
- [-] Introduction 
- [x] Move ahead section on scalar potentials 
- [o] Section 2: scalar potential on domains
- [x] Section 3: triangulations (combinatorial)
- [o] Section 3: triangulations (shape estimate)
- [x] Section 4: scalar potential on triangulations     
- [x] Move back section on shellable triangulations
- [X] Section 5: review of vector calculus
- [x] Section 6: potential operators 
        unity notation, 
- [x] Section 7: Shellable triangulations 
- [x] Section 8: reflections and deformations : singular values! do we need combinatorial triangulation?
- [x] Section 9: Final estimate               : apply singular values, make complete. Combine estimates. Add examples for curl
- [x] Section 10: Computation
- [x] outlook 


Further changes
git diff 97fbcd86 21e58
- [ ] outline of triangulation + shape measures 
- [ ] inequalities over triangulations
- [ ] Sobolev and potential operators 
- [ ] reflection


% Suppose that we have a shellable simplicial complex. 
% Every time we add a simplex according to the shelling sequence, 
% we complete the local star of the some simplex in the triangulation (see Lemma~\ref{lemma:existenceofstar}).


[ ] prove Guerini Savo theorem for Lipschitz domains
Every convex is a continuous graph over a unit ball. Mollify that graph and measure the difference.
Problem: no separation of exterior derivatives between Hodge Laplacians
Can approximate convex domains by strictly convex domains?

[ ] double check what bounds on P and PF constants are actually known in the literature 

[ ] see whether being formally correct, distinguishing points and singletons, is feasible  

[ ] Use the following result? Ziegler, Lemma 8.7: if a complex has a shelling, then this gives a shelling of the stars 

[ ] snippet on shellable, compare with paper 
A simplicial $n$-dimensional complex $\calT$ is called shellable if its $n$-simplices can be arranged in linear order $T_0, T_1, \dots$ in such a way that the subcomplex $( \cup_{i=0}^{k-1} T_i ) \cap T_k$ has dimension $n-1$ for all $k > 0$.



Cite
[x] \cite{bebendorf2003note}
[x] \cite{vohralik2005discrete}
[x] Veeser & Verfurth 


[o] nice snippet 
"Thus, for this lecture no knowledg is needed of the wonderful subleties of piecewise linear topology, nor of the powerful machinery of algebraic topology."

[o] Combinatorics
copy and adapt the content of Ziegler and Kozlov as necessary
The notion of shelling is taken from Ziegler's book~\cite{ziegler2012lectures}

[o] Non-trianguable manifolds?
% TODO: https://arxiv.org/html/1607.08163v3

[o] Some notes on combinatorics, not used here 
% https://mathoverflow.net/questions/403415/properties-a-triangulation-must-have-in-order-to-describe-a-manifold

[o] Some snippet by Verfurth and Veeser:
General results of this type for a class containing the finite element stars are not known to us. In particular and as will be illustrated in a moment, Poincar\'e constants of stars and thus of star-shaped domains may be arbitrarily large. Consequently, corresponding bounds have to incorporate some quantity that perceives the possible lack of convexity. % TODO: \cite{vohralik2005discrete}

[o] books on differential forms 
- Spivak, Michael. *Calculus on Manifolds*. W. A. Benjamin, 1965.
- Lee, John M. *Introduction to Smooth Manifolds*. Springer, 2012.
- Greub, Werner H. *Multilinear Algebra*. Springer, 1978.
- Bott, Raoul, and Loring W. Tu. *Differential Forms in Algebraic Topology*. Springer, 1982.


We express all our main results in the calculus of differential forms, also known as exterior calculus, 
and treat the curl and divergence operator as its particular instances. 


This is achieved by a local patchwise construction of a potential and matching that local contribution to the global potential being constructed in intermediate steps. 
Consequently, the overall estimate depends on the local Poincar\'e constants, the mesh quality, and the depth of the recursion. 

Bounds for products of singular values of a matrix,  R. PELUSO – G. PIAZZA

A consideration on the condition number of
extremely ill-conditioned matrices https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=6662260

NOTE ON SOME UPPER BOUNDS FOR THE CONDITION NUMBER - GUANGHUI CHENG

Singularity, Wielandt’s lemma and singular values

Estimates of the spectral condition number 
James Lam, Zhao Li, Yimin Wei, Jun-e Feng & Kwok Wai Chung

A Best Upper Bound for the P-Norm Condition Number of a Matrix

Bounds for Eigenvalues Using the Trace and Determinant

