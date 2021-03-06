module Policial
  # Public: A Commit in a GitHub repo.
  class Commit
    attr_reader :repo, :sha

    def initialize(repo, sha)
      @repo = repo
      @sha  = sha
    end

    def file_content(filename)
      contents = Policial.octokit.contents(@repo, path: filename, ref: @sha)

      if contents && contents.content
        Base64.decode64(contents.content).force_encoding('UTF-8')
      else
        ''
      end
    rescue Octokit::NotFound
      ''
    end
  end
end
