# 我的 neovim 配置

* 注意此配置主要在 macos 上使用，在其它系统下一些路径可能不同。
  * 在 `lua/core/global.lua` 中可修改所有参数
* 添加了 [neovide](https://github.com/neovide/neovide) 配置
  * 可在 `lua/core/neovide.lua` 中修改其配置
* 目前 debug 使用 [vimspector](https://github.com/puremourning/vimspector), 后续将换到 [nvim-dap](https://github.com/mfussenegger/nvim-dap)
* 插件列表在 `lua/core/plugins`
  * 一些插件暂未配置已注明
* 目前已配置好的语言有:
  * `C/C++`
  * `Python`
  * `Lua`
  * `Rust`
* 如果使用 `telescope` 搜索卡顿，可以在 `lua/plugins/telescope.lua` 里将 `preview = false`

### 键位说明

* `Leader`键为`\`
* 所有插件功能均绑定在`Leader`键上
* 内置功能绑定在`Space`上，配置文件在`lua/core/mapping.lua`

### 安装依赖

* 安装 lsp
  * `lua/core/global.lua` 中的 `lsp` 里修改lsp的路径
* 需要下载安装 [tree-sitter](https://github.com/tree-sitter/tree-sitter)，并添加到环境
* 需要使用特定字体 [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) ，否则一些特殊字符会显示不正常
* 安装 python 并安装 Python 依赖
  * `python3 -m pip install --user --upgrade pynvim`
* 安装 [Glow](https://github.com/charmbracelet/glow)，浏览 markdown
* 安装中英文切换插件的依赖(仅适用macos) [input-source-switcher](https://github.com/vovkasm/input-source-switcher)
