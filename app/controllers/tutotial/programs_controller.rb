class ProgramsController < ApplicationController
def index
  @programs = Program.all
  #load all posts from the model
end

def new
  @program = Program.new
end
end
