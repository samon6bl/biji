---
promptId: 梳理ocr后的文件成markdown
name: 🗞️梳理ocr后的文件成markdown
description: 梳理ocr后的文件成markdown
author:
  - ""
tags:
version: 0.0.1
disableProvider: false
---
```handlebars

```

请将下面文字梳理ocr后的文件成markdown，排除不是正文的内容，其他要求如下： 1. 一二三四五等、为二级标题 2. （一二三四五六七八九）为三级标题 3. 表格ocr出来排版有问题，你可以根据内容调整好吗？ 4. 在标题下方直接添加"%%card%%"，然后紧接着在下一行开始段落内容 5. 将选择题和判断题放在文章最后面。 6.段落之间不空行。 请直接输出markdown文档，不要放入代码块里。
	
{{tg_selection}}

{{output}}