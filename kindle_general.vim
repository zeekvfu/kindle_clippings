" kindle_general.vim


" s/^==========$\n^.\+$\n^- Your Highlight Location .\+$\n//ic
" s/^==========$\n^.\+$\n^- Your Highlight on Page .\+$\n//ic
" s/^==========$\n^.\+$\n^- Your Highlight on Unnumbered Page .\+$\n//ic
" s/^==========$\n^.\+$\n^- Your Bookmark Location .\+$\n//ic
" s/^==========$\n^.\+$\n^- Your Bookmark on Page .\+$\n//ic
" s/^==========$\n^.\+$\n^- Your Note Location .\+$\n//ic
" 举例：
" ==========
" The New Oxford American Dictionary  
" - Your Highlight Location 791372-791388 | Added on Thursday, September 6, 2012 9:35:39 PM


" 替换时行内的所有匹配都被替换，而不是只有第一个匹配被替换
set gdefault

" 删除 \r 回车符，确保换行符为 \n（原来的换行符为 \n\r）
%s/\r//e

" delete bookmarks
%s/^==========$\n^.\+$\n^- Your Highlight .\+$\n//e
%s/^==========$\n^.\+$\n^- Your Bookmark .\+$\n//e
%s/^==========$\n^.\+$\n^- Your Note Location .\+$\n//e
%s/^==========$\n//e


" 行首处理
" 删除行首空白符
%s/^[\t   　]\+//e
" 删除行首的 ">^
%s/^">^//e
" 删除行首的 ">
%s/^">//e
" 删除行首的 >
%s/^>//e


" 行末处理
" 删除行除行末空白符
%s/[\t   　]\+$//e
" 中文处理：删除行末的逗号，
%s/，$//e


