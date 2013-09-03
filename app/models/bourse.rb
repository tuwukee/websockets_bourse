class Bourse < ActiveRecord::Base
  attr_accessible :bourse_status
  before_create :confirm_singularity

  def self.open?
    first.bourse_status
  end

  private

  def confirm_singularity
    raise Exception.new("There can be only one.") if Bourse.count > 0
  end

  def self.close
    bourse = first
    bourse.bourse_status = false
    bourse.save
  end

  def self.open
    bourse = first
    bourse.bourse_status = true
    bourse.save
  end
end
