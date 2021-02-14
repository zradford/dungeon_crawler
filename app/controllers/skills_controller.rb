class SkillsController < ApplicationController
  # GET /skills
  # GET /skills.json
  def index
    @skills = Skill.all
  end

end
