"=============================================================================
" Macros
"=============================================================================
"
" Tip: press combination CtrlV followed by key ex.Enter. in insert mode.
" This will insert Enter code represented by ^M sign
"=============================================================================
" Line of equals
let @-='O=x77p'
" JS add // @flow at the start of js file
let @f='ggO// @flow
" JS oadd js function documentation template
let @d=':JsDoc
" JS convert require to import
let @i='0ceimport/=
" indent HTML attributes
let @w='2f"a
let @g='*ggnf''lgfggn<CR>'
let @c='iconsole.log('
let @s='iJSON.stringify('
" convert - muso import {... }  from models; to import DB from models;
let @m='gg/models''
let @l='gg}}}?import