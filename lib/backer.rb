class Backer
  attr_reader :name, :backed_projects
  @@backers=[]
  def initialize(name)
    @name=name
    @backed_projects=[]
  end
  def back_project(project)
    @backed_projects<<projects
    project.add_backer(self)
  end
  def backed_projects
    @backed_projects
  end
  def self.all
    @@backers
  end
end