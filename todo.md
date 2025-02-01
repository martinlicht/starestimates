
[x] make the remark more explicit (BC table)
[x] mention that the Costabel-McIntosh operators preserve polynomials
[x] double check the form degrees in the theorems
[x] demote the deformation estimates into a mere remark 
[x] and the computations: 8 -> k+1, 7 -> k
[x] gradient: add explicit preimages to the main theorems (as Martin explained)
[x] exterior: add explicit preimages to the main theorems (as Martin explained)
[x] gradient: turn remarks into major results and get a better idea of the recursive structure
[x] turn remarks into major results and get a better idea of the recursive structure

[x] Software and algorithms:
    [x] C++ code and its features (meshes, diffforms)
    [x] Finding a spanning tree in the face graph
    [x] Finding a shelling 
    [x] General remark on how to find a shelling
    [x] The triangulation has an influence. We better avoid non-face patches. 
    [x] make the C++ code more prominent
[ ] Tartar-Peetre 

[ ] Remark on how we can reduce the number of simplices. 
[ ] What is a good start? Is the interior a good heuristic?
[ ] Further algorithms for shellings?

[ ] Lotoreichek, Rohleder: We recover the well-known fact that the eigenvalues of the scalar Laplacian with mixed boundary conditions are between the Neumann and Dirichlet eigenvalues, which follows from a known variational principle. However, such an enclosure does not seem to hold for the vector Laplacians with mixed boundary conditions.

[ ] Laugesen and Siudeja \cite{laugesen2010minimizing} determine the optimal Poincar\'e constant over triangles with $p=2$ in terms of the root of a Bessel function. For any triangle $T$, they estimate 
\[
    C \leq \diam(T) / j_{1,1}, \quad j_{1,1} \approx 3.83170597020751231561443588630816076656454527428780192876229898991883930951
\]
This is slightly better than the Payne-Weinberger bound. It might also be a limit to what extent the latter estimates can be improved for general tetrahedra.

https://math.stackexchange.com/questions/861674/decompose-a-2d-arbitrary-transform-into-only-scaling-and-rotation

- [x] do you have a preference for facet or face ? 
- [x] see whether being formally correct, distinguishing points and singletons, is feasible  
- [x] Use the following result? Ziegler, Lemma 8.7: if a complex has a shelling, then this gives a shelling of the stars 
- [x] opnorm and vecnorm
- [x] replace the shape notation by C_ ...
- [x] scalars: condense the discussion even further
- [x] introduce combinatorial triangulations, use literature referals
- [x] Poincare constants contain, by definition, the diameter itself. 
      That way, there is no need to force the constants into a better shape.
- [x] When is the Jacobian introduced?
- [x] We should use clarify face vs facet
- [x] remove \Faces or use it all over the place 
- [x] U_T
- [x] retire the separation theorem for simplices with that halfplane 
- [x] shape: reduce the shape constant discussion once everything else is in place
- [x] sobolev section: check later that everything needed is there 
- [x] reflection: singular values listed in reflection section
- [x] should all triangulations be n dimensional ? No
- [x] mat and vec norms 
- [x] potentials section: sigma notation for potential operators, rewrite
- [x] potentials section: additional constants notation for potential operators
- [x] potentials section: adapt and unify notation/tex
- [x] does cartan commute with pullback ? 
- [x] final: complete the final estimate, use recursion 
- [x] numerics: create a spanning tree and start computing the scalar estimate
- [x] In potential section, check any occurance of 'A('

Revision: 
- [X] header
- [X] title and abstract, macros 
- [X] library + bib style 
- [-] Introduction 
- [X] Section 2: scalar potential on domains
- [X] Section 3: triangulations (combinatorial)
- [X] Section 3: triangulations (shape estimate)
- [X] Section 4: scalar potential on triangulations     
- [X] Section 5: review of vector calculus
- [X] Section 6: potential operators 
      : write out the asymptotic argument, unity notation, 
      -----------
- [X] Section 7: Shellable triangulations 
- [X] Section 8: reflections and deformations 
      : singular values! do we need combinatorial triangulation?
- [X] Section 9: Final estimate 
- [x] Section 10: Computation
- [X] Section 11: outlook 



Further changes:
- [x] improve the estimate for the face reflection to get a precise analysis of the eigenvalues 
- [x] add a remark whether or not you reproduce that particular estimate later in the general reflection 
- [x] use the product inequality for singular values 
- [x] proofread the geometric estimate; 
- [x] move the constants for P and B into Section 6
- [o] stable Boovskii estimate possible? Stable Poincare estimate earlier?
- [x] use the product inequality for singular values 
- [x] pairwise inequality (topics: p.178)
- [x] Lemma 9.2: clean up estimate on poincare with BC, make it less explicit 
- [x] Section 9: update the application of geometric estimate in the following section
- [x] CODE: include that possible improvement in the C++ estimate
- [x] implement the shelling2 construction in full
- [x] In the deformation-based estimate, avoid estimates of the determinant, be more explicit. 
      Furthermore, it must respect the depth of each simplex
- [ ] improve the constant \rho to have no arbitrary scale and adjust all subsequent estimates
      \rho should be the ratio target height / source height 
      adjust subsequent estimates after that and implement the details in C++.
- [ ] .
- [ ] create an improved geometric estimate for vertex stars 


POST-REVISION:
- (x) if we cut a simplicial ball along a single line, is the result a ball?
- [ ] add examples for the curl operator 







Further changes
git diff 97fbcd86 21e58
- [ ] outline of triangulation + shape measures 
- [ ] inequalities over triangulations
- [ ] Sobolev and potential operators 
- [ ] reflection


% Suppose that we have a shellable simplicial complex. 
% Every time we add a simplex according to the shelling sequence, 
% we complete the local star of the some simplex in the triangulation (see Lemma~\ref{lemma:existenceofstar}).

FURTHER WORK 

[x] prove Guerini Savo theorem for Lipschitz domains
Every convex set is a continuous graph over a unit ball. Mollify that graph and measure the difference.
Problem: no separation of exterior derivatives between Hodge Laplacians
Can approximate convex domains by strictly convex domains?





[ ] snippet on shellable, compare with paper 
A simplicial $n$-dimensional complex $\calT$ is called shellable if its $n$-simplices can be arranged in linear order $T_0, T_1, \dots$ in such a way that the subcomplex $( \cup_{i=0}^{k-1} T_i ) \cap T_k$ has dimension $n-1$ for all $k > 0$.

[o] nice snippet 
"Thus, for this lecture no knowledge is needed of the wonderful subleties of piecewise linear topology, nor of the powerful machinery of algebraic topology."

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

