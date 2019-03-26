class OmniauthSamlCreateTables < ActiveRecord::Migration[5.2]
	def change
		create_table :omniauth_saml_authn_requests do |t|
			t.string :uuid
			t.jsonb :options
		end
	end
end