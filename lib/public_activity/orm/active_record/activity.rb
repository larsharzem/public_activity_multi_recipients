# frozen_string_literal: true

module PublicActivity

  if not defined? ::PG::ConnectionBad
    module ::PG
      class ConnectionBad < Exception; end
    end
  end
  if not defined? Mysql2::Error::ConnectionError
    module Mysql2
      module Error
        class ConnectionError < Exception; end
      end
    end
  end
  
  module ORM
    module ActiveRecord
      # The ActiveRecord model containing
      # details about recorded activity.
      class Activity < ::ActiveRecord::Base
        include Renderable
        self.table_name = PublicActivity.config.table_name
        self.abstract_class = true
        default_scope -> { where(is_annulled: false) }

        # Define polymorphic association to the parent
        belongs_to :trackable, :polymorphic => true

        ## case ::ActiveRecord::VERSION::MAJOR
        ## when 3..4
        ##   # Define ownership to a resource responsible for this activity
        ##   belongs_to :owner, :polymorphic => true
        ##   # Define ownership to a resource targeted by this activity
        ##   belongs_to :recipient, :polymorphic => true
        ## when 5..6
        ##   with_options(:required => false) do
        ##     # Define ownership to a resource responsible for this activity
        ##     belongs_to :owner, :polymorphic => true
        ##     # Define ownership to a resource targeted by this activity
        ##     belongs_to :recipient, :polymorphic => true
        ##   end
        ## end

        # Serialize parameters Hash
        begin
          if table_exists?
            serialize :parameters, Hash unless [:json, :jsonb, :hstore].include?(columns_hash['parameters'].type)
          else
            warn("[WARN] table #{name} doesn't exist. Skipping PublicActivity::Activity#parameters's serialization")
          end
        rescue ::ActiveRecord::NoDatabaseError => e
          warn("[WARN] database doesn't exist. Skipping PublicActivity::Activity#parameters's serialization")
        rescue ::PG::ConnectionBad => e
          warn("[WARN] couldn't connect to database. Skipping PublicActivity::Activity#parameters's serialization")
        rescue Mysql2::Error::ConnectionError
          warn("[WARN] couldn't connect to database. Skipping PublicActivity::Activity#parameters's serialization")
        end

        if ::ActiveRecord::VERSION::MAJOR < 4 || defined?(ProtectedAttributes)
          attr_accessible :key, :owner, :parameters, :recipient, :trackable
        end

        ## getters ##
      
        def date
          return self.created_at.strftime('%d %b %Y')
        end
    
        def date_per_three_hours
          interval = (self.created_at.strftime('%H').to_f * 60.minutes + self.created_at.strftime('%M').to_i * 60.seconds) / 3.hours
          return self.created_at.strftime('%d %b %Y') + " #{interval.floor * 3}:00"
        end
    
        def date_hour
          interval = (self.created_at.strftime('%M').to_i * 60.seconds) / 10.minutes
          return self.created_at.strftime('%d %b %Y %H') + ":#{interval.floor * 10}"
        end
    
        def date_hour_minute
          return self.created_at.strftime('%d %b %Y %H:%M')
        end
      end
    end
  end
end
