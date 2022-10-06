-- 清空自动命令
vim.cmd('autocmd!')

-- 取消鼠标定位光标
vim.opt.mouse = 'r'

-- 编码相关
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- 启用行号
vim.wo.number = true

-- 显示标题（filestring变量的值）
vim.opt.title = true

-- 高亮查找模式匹配的地方
vim.opt.hlsearch = true

-- vim.opt.backup: 写回文件时建立备份
-- false: 给文件换名，然后写入一个新文件
vim.opt.backup = false

-- 在屏幕最后一行显示命令
vim.opt.showcmd = true

-- 屏幕显示命令的行数
vim.cmdheight = 1

-- 最后一个窗口总是显示状态行
vim.opt.laststatus = 2

-- 插入tab时使用合适数量的空格
vim.opt.expandtab = true

-- 光标上下两侧最少保留的屏幕行数
vim.opt.scrolloff = 10

-- 使用!和:!命令的shell名，windows这里用默认的(`cmd.exe`)就行
-- vim.opt.shell = 'fish'

-- 匹配模式则不会建立备份
vim.opt.backupskip = '/tmp/*./private/tmp/*'

-- 限制某些指令的可视化效果
vim.opt.inccommand = 'split'

-- 搜索模式中忽略大小写
vim.opt.ignorecase = true

-- 自动缩进
vim.opt.autoindent = true

-- 首行的Tab根据`shiftwidth`插入空白
vim.opt.smarttab = true
vim.opt.shiftwidth = 2

-- 回车后保持视觉上的缩进
vim.opt.breakindent = true

-- Tab代表的空格数
vim.opt.tabstop = 2

-- 这两个应该跟上面两个设置重复了
-- vim.opt.ai = true -- Auto indent
-- vim.opt.si = true -- Smart indent

-- 不自动换行（不改变缓冲区里的文本）
vim.opt.wrap = false

-- 允许退格的位置：在插入开始的位置上、在换行符上、在自动缩进上
-- 似乎是针对MacOS的
-- vim.opt.backspace = 'start,eol,indent'

-- 添加当前目录下的所有子目录到path路径中
vim.opt.path:append { '**' } -- Finding files - Search down into subfloders

-- 忽略文件模式列表
vim.opt.wildignore:append { '*/node_modules/*' }

-- 底色高亮
-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- 离开插入模式时，清空剪切板
-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- 自动排版模式，在插入模式按回车时，自动插入当前注释前导符
-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
