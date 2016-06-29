class ProjectsController < ApplicationController

  def home
    render :home
  end

  def active_record
    render :active_record
  end

  def sql_reference
    render :sql
  end


end