" ============================
" set ft based on extensions
" ============================
"
" enable man pages
runtime ftplugin/man.vim
"
" sets extensions for files with goto file to help with js imports
augroup suffixes
  autocmd!
  let associations = [
        \["json", ".json"],
        \["javascript", ".js,.javascript,.es,.esx,.json"],
        \["css", ".css,.less,.scss"],
        \["html", ".htm,.html,.xhtml,.tmpl"],
        \["typescript", ".ts"],
        \["vue", ".vue"],
        \["arduino", ".ino"],
        \["yaml", ".yml,.yaml"],
        \["shell", ".csh,.sh,.bash"],
        \["vimrc", ".vimrc,.vim"],
        \["python", ".py,.pyw"]
        \]
  for ft in associations
    execute "au! bufnewfile,bufread,bufenter *" . ft[1] . " setlocal filetype=" . ft[0]
    execute "au filetype " . ft[0] . " setlocal suffixesadd=" . ft[1]
  endfor
augroup end
