local keymap = vim.keymap

-- 使用黑洞寄存器来使用x
keymap.set('n', 'x', '"_x')

-- 用+/-来自增/自减光标下的数值
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- 使用dw时反向删除单词
-- keymap.set('n', 'dw', 'vb"_d')

-- 使用Ctrl+a全选
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- 创建tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- 在子窗口之间移动
keymap.set('n', '<Space>', '<C-w>w')
-- keymap.set('', 's<left>', '<C-w>h')
-- keymap.set('', 's<up>', '<C-w>k')
-- keymap.set('', 's<down>', '<C-w>j')
-- keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sl', '<C-w>l')

-- 调整子窗口大小
keymap.set('n', '<C-w>h', '<c-w><')
keymap.set('n', '<C-w>j', '<c-w>+')
keymap.set('n', '<C-w>k', '<c-w>-')
keymap.set('n', '<C-w>l', '<c-w>>')

-- 避免Windows下Ctrl+z导致卡死
keymap.set('n', '<C-z>', '<Nop>')
