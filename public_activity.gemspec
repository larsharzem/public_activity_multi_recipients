# -*- encoding: utf-8 -*-
# stub: public_activity 1.6.4 ruby lib

Gem::Specification.new do |s|
  s.name = "public_activity".freeze
  s.version = "1.6.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Piotrek Oko\u{144}ski".freeze, "Kuba Oko\u{144}ski".freeze]
  s.date = "2022-10-15"
  s.description = "Easy activity tracking for your ActiveRecord models. Provides Activity model with details about actions performed by your users, like adding comments, responding etc.".freeze
  s.email = "piotrek@okonski.org".freeze
  s.files = ["Gemfile".freeze, "MIT-LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "lib/generators/public_activity.rb".freeze, "lib/generators/public_activity/migration/migration_generator.rb".freeze, "lib/generators/public_activity/migration/templates/migration.rb".freeze, "lib/generators/public_activity/migration_upgrade/migration_upgrade_generator.rb".freeze, "lib/generators/public_activity/migration_upgrade/templates/upgrade.rb".freeze, "lib/public_activity.rb".freeze, "lib/public_activity/actions/creation.rb".freeze, "lib/public_activity/actions/destruction.rb".freeze, "lib/public_activity/actions/update.rb".freeze, "lib/public_activity/activity.rb".freeze, "lib/public_activity/common.rb".freeze, "lib/public_activity/config.rb".freeze, "lib/public_activity/models/activist.rb".freeze, "lib/public_activity/models/activity.rb".freeze, "lib/public_activity/models/adapter.rb".freeze, "lib/public_activity/models/trackable.rb".freeze, "lib/public_activity/orm/active_record.rb".freeze, "lib/public_activity/orm/active_record/activist.rb".freeze, "lib/public_activity/orm/active_record/activity.rb".freeze, "lib/public_activity/orm/active_record/adapter.rb".freeze, "lib/public_activity/orm/active_record/trackable.rb".freeze, "lib/public_activity/orm/mongo_mapper.rb".freeze, "lib/public_activity/orm/mongo_mapper/activist.rb".freeze, "lib/public_activity/orm/mongo_mapper/activity.rb".freeze, "lib/public_activity/orm/mongo_mapper/adapter.rb".freeze, "lib/public_activity/orm/mongo_mapper/trackable.rb".freeze, "lib/public_activity/orm/mongoid.rb".freeze, "lib/public_activity/orm/mongoid/activist.rb".freeze, "lib/public_activity/orm/mongoid/activity.rb".freeze, "lib/public_activity/orm/mongoid/adapter.rb".freeze, "lib/public_activity/orm/mongoid/trackable.rb".freeze, "lib/public_activity/renderable.rb".freeze, "lib/public_activity/roles/deactivatable.rb".freeze, "lib/public_activity/roles/tracked.rb".freeze, "lib/public_activity/testing.rb".freeze, "lib/public_activity/utility/store_controller.rb".freeze, "lib/public_activity/utility/view_helpers.rb".freeze, "lib/public_activity/version.rb".freeze, "test/migrations/001_create_activities.rb".freeze, "test/migrations/002_create_articles.rb".freeze, "test/migrations/003_create_users.rb".freeze, "test/migrations/004_add_nonstandard_to_activities.rb".freeze, "test/migrations_base.rb".freeze, "test/mongo_mapper.yml".freeze, "test/mongoid.yml".freeze, "test/test_activist.rb".freeze, "test/test_activity.rb".freeze, "test/test_common.rb".freeze, "test/test_controller_integration.rb".freeze, "test/test_generators.rb".freeze, "test/test_helper.rb".freeze, "test/test_testing.rb".freeze, "test/test_tracking.rb".freeze, "test/test_view_helpers.rb".freeze, "test/views/custom/_layout.erb".freeze, "test/views/custom/_test.erb".freeze, "test/views/layouts/_activity.erb".freeze, "test/views/public_activity/_test.erb".freeze]
  s.homepage = "https://github.com/pokonski/public_activity".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Easy activity tracking for ActiveRecord models".freeze
  s.test_files = ["test/migrations/001_create_activities.rb".freeze, "test/migrations/002_create_articles.rb".freeze, "test/migrations/003_create_users.rb".freeze, "test/migrations/004_add_nonstandard_to_activities.rb".freeze, "test/migrations_base.rb".freeze, "test/mongo_mapper.yml".freeze, "test/mongoid.yml".freeze, "test/test_activist.rb".freeze, "test/test_activity.rb".freeze, "test/test_common.rb".freeze, "test/test_controller_integration.rb".freeze, "test/test_generators.rb".freeze, "test/test_helper.rb".freeze, "test/test_testing.rb".freeze, "test/test_tracking.rb".freeze, "test/test_view_helpers.rb".freeze, "test/views/custom/_layout.erb".freeze, "test/views/custom/_test.erb".freeze, "test/views/layouts/_activity.erb".freeze, "test/views/public_activity/_test.erb".freeze]

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.5.0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.7"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1.5.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7.0"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.2.8"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
      s.add_development_dependency(%q<redcarpet>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.11"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    else
      s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<i18n>.freeze, [">= 0.5.0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 3.0"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.7"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1.5.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 3.2.8"])
      s.add_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
      s.add_dependency(%q<redcarpet>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9.11"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<i18n>.freeze, [">= 0.5.0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.7"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1.5.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.2.8"])
    s.add_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
    s.add_dependency(%q<redcarpet>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
