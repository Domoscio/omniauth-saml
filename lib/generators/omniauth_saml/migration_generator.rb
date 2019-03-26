require 'rails/generators/active_record'

module OmniauthSaml
	class MigrationGenerator < ::Rails::Generators::Base
		include Rails::Generators::Migration
		source_root File.expand_path('../templates', __FILE__)
		desc 'Install Database entries'

		def install
			migration_template('migration.rb', 'db/migrate/omniauth_saml_create_tables.rb', migration_version: migration_version)
		end

		def self.next_migration_number(dirname)
			ActiveRecord::Generators::Base.next_migration_number(dirname)
		end

		def migration_version
			"[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
		end
	end
end