require 'pathname'

module IssueWikiJournal
  class WikiChangeset
    def self.root
      @root ||= Pathname.new(File.expand_path('../../', __FILE__))
    end

    def self.version
      Redmine::Plugin.find(:redmine_issue_wiki_journal).version
    end
  end
end

require_relative 'issue_wiki_journal/wiki_changeset'
