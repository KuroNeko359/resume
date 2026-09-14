// ============================================================
// 简历模板（公开版）
// 本文件为无个人信息的公开模板，可直接上传 GitHub。
// 使用方法：
//   1. 将本文件复制为 resume.typ 后填写【】中的占位内容；
//   2. 把个人照片放到 assets/profile.jpg（该目录已被 .gitignore 忽略，不会上传）；
//   3. 用 typst compile resume.typ 编译出 PDF。
// ============================================================

#set page(paper: "a4", margin: (top: 16mm, bottom: 15mm, left: 18mm, right: 18mm))

#let black = rgb("#111111")
#let text-gray = rgb("#3f3f3f")
#let mid-gray = rgb("#777777")
#let hairline = rgb("#cecece")
#let link-blue = rgb("#1b5e9e")
#let title-fonts = ("Georgia", "Songti SC", "STSong", "Times New Roman")
#let english-title-fonts = ("Georgia", "Times New Roman")
#let body-fonts = ("Songti SC", "STSong", "Times New Roman")

#set text(font: body-fonts, size: 9.2pt, weight: 400, fill: text-gray)
#set par(leading: 0.45em)
#set list(indent: 1.0em, body-indent: 0.5em, spacing: 0.24em)

#let section(title) = {
  v(11pt)
  block(below: 6pt, breakable: false)[
    #text(font: title-fonts, size: 15pt, weight: 600, fill: black)[#title]
    #v(3pt)
    #line(length: 100%, stroke: 0.65pt + hairline)
  ]
}

#let heading(title, subtitle, date) = {
  grid(
    columns: (auto, 1fr, auto),
    column-gutter: 8pt,
    align: (left, left, right),
    text(font: body-fonts, size: 10.1pt, weight: 600, fill: black)[#title],
    text(size: 8.7pt, weight: 520, fill: mid-gray)[#subtitle],
    text(size: 8.6pt, fill: mid-gray)[#date],
  )
  v(3pt)
}

#let english-heading(title, subtitle, date) = {
  grid(
    columns: (auto, 1fr, auto),
    column-gutter: 8pt,
    align: (left, left, right),
    text(font: english-title-fonts, size: 11.25pt, weight: 700, tracking: 0.09em, fill: black)[#title],
    text(size: 8.7pt, weight: 520, fill: mid-gray)[#subtitle],
    text(size: 8.6pt, fill: mid-gray)[#date],
  )
  v(3pt)
}

#let labeled(label, value) = [
  #text(weight: 600, fill: black)[#label]#h(5pt)#value
]

#let web-link(url, label) = link(url)[
  #underline(text(weight: 600, fill: link-blue)[#label])
]

#grid(
  columns: (1fr, 24mm),
  column-gutter: 10mm,
  align: (left, center),
  [
    #text(font: title-fonts, size: 26pt, weight: 600, fill: black)[【你的姓名】]
    #v(2pt)
    #text(size: 10pt, weight: 600, fill: text-gray)[【目标岗位】　/　【行业方向】]
    #v(8pt)
    #text(size: 8.8pt, fill: mid-gray)[【手机号】　　#text("【邮箱】")]
    #v(3pt)
    #text(size: 8.8pt, fill: mid-gray)[#link("https://github.com/【用户名】")[github.com/【用户名】]]
  ],
  box(width: 24mm, height: 30mm, clip: true)[
    // 照片放在本地 assets/profile.jpg（已被 .gitignore 忽略，不会上传到 GitHub）
    #place(center + top, dy: -1mm)[#image("assets/profile.jpg", width: 38mm)]
  ],
)

#v(9pt)
#line(length: 100%, stroke: 1.3pt + black)

#section[技术概览]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 22pt,
  row-gutter: 4pt,
  labeled[编程语言][【语言 1、语言 2、语言 3】],
  labeled[后端开发][【框架】],
  labeled[系统基础][【Linux / 体系结构 / 网络】],
  labeled[数据组件][【数据库 / 大数据组件】],
  labeled[Web 技术][【前端框架】],
  labeled[工程工具][【Git / 调试工具等】],
)

#section[教育经历]

#heading[【学校名称】][本科 · 【专业】（在读）][【年份】 / 至今]

【在校期间的主要成就或学习方向，1-2 句。】

#v(5pt)
#heading[【学校名称】][大专 · 【专业】][【年份】 / 【年份】]

【在校期间参与的项目与成果，1-2 句。】

#section[论文与科研]

#english-heading[【论文标题】][作者身份 · 发表/投稿状态 · #web-link("https://arxiv.org/abs/【编号】", [Preprint])][【日期】]

#list(
  [论文主题一句话概括。],
  [论文的核心贡献 1-2 条。],
)

#section[项目经历]

#english-heading[【项目名称】][【技术栈】 · 独立开发 · #web-link("https://github.com/【用户名】/【仓库名】", [GitHub])][【起始时间】 / 至今]

#list(
  [【项目职责与亮点 1】],
  [【项目职责与亮点 2】],
  [【项目职责与亮点 3】],
)

#section[竞赛、奖学金与证书]

#heading[【竞赛名称】][【赛项】 · 【奖项】][【年份】]
#heading[【奖学金名称】][【学年】 · 【名次】][【年份】]
#heading[【证书名称（如 CET-4）】][][]
