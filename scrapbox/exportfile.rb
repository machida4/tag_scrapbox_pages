require "json"

module Scrapbox
  class Scrapbox::Exportfile
    attr_reader :tag_name
    attr_accessor :project

    def initialize(file)
      self.project = JSON.load(file)
    end

    # ページ内にリンクorハッシュタグが見つからなかったらハッシュタグ書き込み
    def tag_all(tag_name)
      self.pages.each do |page|
        unless page["lines"].any? { |line| line =~ match_regexp(tag_name) }
          page["lines"] << "" unless page["lines"].last.empty?
          page["lines"] << "##{tag_name}" << ""
        end
      end
    end

    # (ファイル名)_tagged.jsonに書き込み
    def write(file)
      file.puts(JSON.pretty_generate(self.project))
    end

    def pages
      self.project["pages"]
    end

    private

    def match_regexp(tag_name)
      /\##{tag_name}|\[#{tag_name}\]/i
    end
  end
end
