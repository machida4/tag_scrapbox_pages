# tag_scrapbox_pages

ExportしたScrapboxのページにタグ付けするスクリプト

## Description
Scrapboxにはプロジェクト全体をJSONフォーマットで出力するExport Pages(`Settings > Page Data > Export Pages`)という機能があります

スクリプトを起動すると、Export Pages機能によって出力したプロジェクトの、指定した名前のリンクまたはハッシュタグのないページにハッシュタグを付けてまわります。

もう使っていないScrapboxプロジェクトを別のScrapboxプロジェクトにマージする際に使えるかもしれません。

## Requirement

* Ruby

## Usage

```bash
git clone git@github.com:machida4/tag_scrapbox_pages.git
cd tag_scrapbox_pages
ruby tag_scrapbox_pages.rb <your_scrapbox_exportfile_path> <tag_name>
```
