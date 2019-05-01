syn region texZone matchgroup=texBeginEnd start="\\begin{hscode.*}" end="\\end{hscode.*}\|%stopzone\>"
let g:tex_noindent_env = 'document\|verbatim\|lstlisting\|frame'
