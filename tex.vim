set nocindent
set timeoutlen=2000
set colorcolumn=120

set spell spelllang=de
syntax spell toplevel

nnoremap ,ll :!pdflatex -interaction nonstopmode %<CR>
" nnoremap ,rr :!pdflatex -interaction nonstopmode %<CR><CR>:!a=%; biber ${a\%.tex}<CR><CR>:!pdflatex -interaction nonstopmode %<CR><CR>:!pdflatex -interaction nonstopmode %<CR><CR>
nnoremap ,lv :!a=%; open ${a\%tex}pdf<CR><CR>

" Aufzaehlungen
inoremap enum<Tab> \begin{enumerate}<CR>\item <CR><Up><Up><Esc>^<Down><Down>i\end{enumerate}<Up>
inoremap enumi<Tab> \begin{enumerate}[(i)]<CR>\item <CR><Up><Up><Esc>^<Down><Down>i\end{enumerate}<Up>
inoremap enuma<Tab> \begin{enumerate}[(a)]<CR>\item <CR><Up><Up><Esc>^<Down><Down>i\end{enumerate}<Up>
inoremap enum1<Tab> \begin{enumerate}[(1)]<CR>\item <CR><Up><Up><Esc>^<Down><Down>i\end{enumerate}<Up>
inoremap item<Tab> \begin{itemize}<CR>\item <CR><Up><Up><Esc>^<Down><Down>i\end{itemize}<Up>

" Umgebungen
inoremap align<Tab> \begin{align*}<CR>\end{align*}<Esc>O
inoremap mult<Tab> \begin{multline*}<CR>\end{multline*}<Esc>O
inoremap eqn<Tab> \begin{equation}<CR>\end{equation}<Esc>O
inoremap eqnl<Tab> \begin{equation}<CR>\label{eqn:}<CR>\end{equation}<Esc><Up>O
inoremap text<Tab> \text{
inoremap tex<Tab> \text{

" Theoreme
inoremap proof<Tab> \begin{proof}<CR>\end{proof}<Esc>O
inoremap bew<Tab> \begin{proof}<CR>\end{proof}<Esc>O
inoremap beweis<Tab> \begin{proof}<CR>\end{proof}<Esc>O

inoremap def2<Tab> \begin{def2}<CR>\end{def2}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap def<Tab> \begin{def2}<CR>\end{def2}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap def*<Tab> \begin{def2*}<CR>\end{def2*}<Esc>O

inoremap satz<Tab> \begin{satz}<CR>\end{satz}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR><CR><UP><UP>$a
inoremap satz*<Tab> \begin{satz*}<CR>\end{satz*}<Esc>O
inoremap lem<Tab> \begin{lem}<CR>\end{lem}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap lem*<Tab> \begin{lem*}<CR>\end{lem*}<Esc>O
inoremap kor<Tab> \begin{kor}<CR>\end{kor}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap kor*<Tab> \begin{kor*}<CR>\end{kor*}<eSC>o
inoremap prop<Tab> \begin{prop}<CR>\end{prop}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap prop*<Tab> \begin{prop*}<CR>\end{prop*}<Esc>O
inoremap bem<Tab> \begin{bem}<CR>\end{bem}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap bem*<Tab> \begin{bem*}<CR>\end{bem*}<Esc>O

inoremap bsp<Tab> \begin{beisp}<CR>\end{beisp}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap bspe<Tab> \begin{bspe}<CR>\end{bspe}<Esc>?\\label{\d\+.\d\+}<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap bsp*<Tab> \begin{beisp*}<CR>\end{beisp*}<Esc>O

inoremap hilf*<Tab> \begin{hilf*}<CR>\end{hilf*}<Esc>O
inoremap hinw<Tab> \begin{hinw}<CR>\end{hinw}<Esc>?\\label<CR>yy``P$<Left><C-a>:noh<CR>o
inoremap beh*<Tab> \begin{beh*}<CR>\end{beh*}<Esc>O
inoremap hinw*<Tab> \begin{hinw*}<CR>\end{hinw*}<Esc>O

" Matritzen etc.
inoremap cases<Tab> \begin{cases}\end{cases}<Esc>F\i
inoremap vect<Tab> \left(\begin{array}{c}\end{array}\right)<Esc>F\F\i
inoremap matr<Tab> \begin{pmatrix}\end{pmatrix}<Esc>F\i

inoremap dgl<Tab> \left\{\begin{array}{l}\end{array}\right.\]<Esc>F\F\F\i


" Mathematik-Abkuerzungen
inoremap \f<Tab> \frac
inoremap \g<Tab> \frac
inoremap on<Tab> \operatorname{
inoremap \on<Tab> \operatorname{
inoremap fpar<Tab> \frac{\partial }{\partial }<Esc>F{hi
inoremap \fpar<Tab> \frac{\partial }{\partial }<Esc>F{hi
inoremap dd<Tab> \frac{\dx{}}{\dx{}}<Esc>F{a
inoremap \dd<Tab> \frac{\dx{}}{\dx{}}<Esc>F{a
inoremap par<Tab> \partial<Space>
inoremap \par<Tab> \partial<Space>
inoremap inf<Tab> \infty<Space>
inoremap \inf<Tab> \infty<Space>
inoremap x<Tab> \times<Space>
inoremap olco<Tab> \overline{\operatorname{co}}

" Fertige Konstrukte
vnoremap ,u di\underbrace{<Esc>pa}_{}<Esc>ha
vnoremap ,o di\overline{<Esc>pa}<Esc>ha
inoremap _<Tab> _{}<Left>
inoremap ^<Tab> ^{-1}
inoremap ^12<Tab> ^\frac{1}{2}
inoremap ^-12 <Tab> ^{-\frac{1}{2}}
inoremap ^i<Tab> ^\infty<Space>
inoremap ^I<Tab> ^\infty<Space>
inoremap ^j<Tab> ^{-j}
inoremap _i<Tab> _{i=1}
inoremap _I<Tab> _{i=1}
inoremap _j<Tab> _{j=1}
inoremap _k<Tab> _{k=1}
inoremap ^n<Tab> ^{n+1}
inoremap _n<Tab> _{n+1}
inoremap Sn<Tab> _{n+1}
inoremap iti<Tab> \lim_{i\to\infty}
inoremap kti<Tab> \lim_{k\to\infty}
inoremap nti<Tab> \lim_{n\to\infty}
inoremap tti<Tab> \lim_{t\to\infty}
inoremap htn<Tab> \lim_{h\to 0}
inoremap ttn<Tab> \lim_{t\to 0}
inoremap xtn<Tab> \lim_{x\to 0}
inoremap ytn<Tab> \lim_{y\to 0}

inoremap eqv<Tab> \Leftrightarrow<Space>
inoremap seq<Tab> \Rightarrow<Space>
inoremap abb<Tab> \rightarrow<Space>
inoremap cnv<Tab> \longrightarrow<Space>

inoremap glei<Tab> \overset{}{=}<Esc>F{hi

inoremap ub<Tab> \underbrace{
inoremap os<Tab> \overset
inoremap us<Tab> \underset{

inoremap fa<Tab> \,\forall \,
inoremap ex<Tab> \,\exists\,

inoremap >= \geq
inoremap <= \leq
inoremap != \neq
inoremap .<Tab> \cdot

" besondere Mengensymbole
inoremap R<Tab> \mathbb R
inoremap E<Tab> \mathbb E
inoremap P<Tab> \mathbb P
inoremap F<Tab> \mathbb F
inoremap tP<Tab> \tilde{\mathbb P}
inoremap t<Space>P<Tab> \tilde{\mathbb P}
inoremap K<Tab> \mathbb K
inoremap X<Tab> \mathbb X
inoremap N<Tab> \mathbb N
inoremap Z<Tab> \mathbb Z
inoremap Q<Tab> \mathbb Q
inoremap C<Tab> \mathbb C
inoremap 1<Tab> \mathbbm 1_
inoremap O<Tab> \Omega

" griechische Buchstaben
inoremap p<Tab> \varphi<Space>
inoremap e<Tab> \varepsilon<Space>
inoremap d<Tab> \delta<Space>
inoremap l<Tab> \lambda<Space>
inoremap a<Tab> \alpha<Space>

" Sonderzeichen & Diakritika
inoremap ol<Tab> \overline<Space>
inoremap t<Tab> \tilde<Space>

" Klammern
inoremap (<Tab> \left(
inoremap )<Tab> \right)
inoremap <<Tab> \left<
inoremap ><Tab> \right>
inoremap [<Tab> \left[
inoremap ]<Tab> \right]
inoremap [[ \llbracket 
inoremap ]] \rrbracket 
inoremap ((<Tab> \llparen 
inoremap ))<Tab> \rrparen 
inoremap {<Tab> \left\{
inoremap }<Tab> \right\}
inoremap <Bar><Tab> \middle<Bar>
inoremap ;<Tab> \left
inoremap :<Tab> \right

" Sprachliches
inoremap ... \ldots
inoremap ae<Tab> "a
inoremap au<Tab> "au
inoremap ue<Tab> "u
inoremap oe<Tab> "o
inoremap Ae<Tab> "A
inoremap Oe<Tab> "O
inoremap Ue<Tab> "U
inoremap ss<Tab> "s

" Abkürzungen
inoremap zb<Tab> z.\,B.\ 
inoremap zB z.\,B.\ 
inoremap z.b. z.\,B.\ 
inoremap z.B. z.\,B.\ 
inoremap d.h. d.\,h.\ 
inoremap d.<Space>h. d.\,h.\ 
inoremap dh<Tab> d.\,h. 
inoremap obda o.\,B.\,d.\,A.\, 
inoremap Obda O.\,B.\,d.\,A.\, 
inoremap OBdA O.\,B.\,d.\,A.\, 
inoremap oBdA o.\,B.\,d.\,A.\, 
inoremap o.b.d.a o.\,B.\,d.\,A.\, 
inoremap o.B.d.A o.\,B.\,d.\,A.\, 
inoremap O.B.d.A O.\,B.\,d.\,A.\, 



" Formatierung
inoremap mc<Tab> \mathcal 
inoremap ms<Tab> \mathscr 
inoremap mf<Tab> \mathfrak 
inoremap mb<Tab> \mathbf 
inoremap mr<Tab> \mathrm 
inoremap bf<Tab> \textbf{
inoremap em<Tab> \emph{
inoremap sc<Tab> \textsc{
inoremap Bochner \textsc{Bochner}
inoremap Lebesgue \textsc{Lebesgue}
inoremap Hilbert \textsc{Hilbert}
inoremap Banach \textsc{Banach}
inoremap Cauchy \textsc{Cauchy}
inoremap Schwartz \textsc{Schwartz}
inoremap Gelfand \textsc{Gelfand}
inoremap Garding \textsc{G\aa{}rding}
inoremap Frechet \textsc{Fr\'echet}

vnoremap ,b di\textbf{<Esc>pa}<Esc>


" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!

""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! Checkmathmode(math, nomath)
  let i=0
  if synIDattr(synID(line('.'), col('.')-1, 1), "name")=~"texStatement"
    while(synIDattr(synID(line('.'), col('.')-i-1, 1), "name")=~"texStatement")
      let i=i+1
    endwhile
    if synIDattr(synID(line('.'), col('.')-i-1, 1), "name")=~"texMath"
      return a:math
    endif
  endif
  if synIDattr(synID(line('.'), col('.')-i-1, 1), "name")=~"texMath"
    return a:math 
  endif
  if synIDattr(synID(line('.'), col('.')-i, 1), "name")=~ "texMath" 
    return a:math 
  endif
  if synIDattr(synID(line('.'), col('.')-i-1, 1), "name")=~"Delimiter" 
    if synIDattr(synID(line('.'), col('.')-i-2, 1), "name")=~"Delimiter" 
      if synIDattr(synID(line('.'), col('.')-i-3, 1), "name")!~"texMath" 
        return a:math 
      endif
      return a:nomath
    endif 
    if synIDattr(synID(line('.'), col('.')-i-2, 1), "name")!~"texMath" 
      return a:math 
    endif
    return a:nomath
  endif
  return a:nomath
endfunction

