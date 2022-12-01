# frozen_string_literal: true

module PublicActivity
  class Activity < inherit_orm("Activity")
    # NB those scope should live in lib/public_activity/orm/active_record/activity.rb but including them there will return a scope
    # PublicActivity::ORM::ActiveRecord::Activity (rather than PublicActivity::Activity) which will be unusable for chaining relations that
    # belong to PublicActivity::Activity
    scope :including_annulled, -> { unscope(where: :is_annulled) }
    scope :annulled, -> { unscope(where: :is_annulled).where(is_annulled: true) }
  end
end
