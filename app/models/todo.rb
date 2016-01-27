class Todo < ActiveRecord::Base
  def completed?
    completed_at? #completed_at? comes from activerecord
  end

  def complete!
    touch :completed_at
  end

  def mark_incomplete!
    update_column :completed_at, nil
  end
end