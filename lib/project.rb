class Project
  attr_reader :title, :backers
  @@projects=[]
  def initialize(title)
    @title=title
    @backers=[]
  end
  def add_backer(backer)
    @backers<<backer
    backer.back_project(self)
  end
  def backers
    Backer.all.each do |backer|
      if backer.backed_projects.include?(self)
        @backers<<backer
      end
    end
    @backers
  end
end