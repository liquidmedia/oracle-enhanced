# frozen_string_literal: true

# Disabling rake (and adding an explicit FileList below) because for some reason rake isn't available in the deploy environment, and I'm too lazy to solve it for real
# require "rake"

version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.name = "activerecord-oracle_enhanced-adapter"
  s.version = version

  s.required_rubygems_version = ">= 1.8.11"
  s.required_ruby_version     = ">= 2.7.0"
  s.license = "MIT"
  s.authors = ["Raimonds Simanovskis"]
  s.description = 'Oracle "enhanced" ActiveRecord adapter contains useful additional methods for working with new and legacy Oracle databases.
This adapter is superset of original ActiveRecord Oracle adapter.
'
  s.email = "raimonds.simanovskis@gmail.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  # s.files = FileList["History.md", "License.txt", "README.md", "VERSION", "lib/**/*"].exclude("lib/ojdbc*.jar")
  s.files = ["History.md", "License.txt", "README.md", "VERSION", "lib/active_record", "lib/active_record/connection_adapters", "lib/active_record/connection_adapters/emulation", "lib/active_record/connection_adapters/emulation/oracle_adapter.rb", "lib/active_record/connection_adapters/oracle_enhanced", "lib/active_record/connection_adapters/oracle_enhanced/column.rb", "lib/active_record/connection_adapters/oracle_enhanced/connection.rb", "lib/active_record/connection_adapters/oracle_enhanced/context_index.rb", "lib/active_record/connection_adapters/oracle_enhanced/database_limits.rb", "lib/active_record/connection_adapters/oracle_enhanced/database_statements.rb", "lib/active_record/connection_adapters/oracle_enhanced/database_tasks.rb", "lib/active_record/connection_adapters/oracle_enhanced/dbms_output.rb", "lib/active_record/connection_adapters/oracle_enhanced/jdbc_connection.rb", "lib/active_record/connection_adapters/oracle_enhanced/jdbc_quoting.rb", "lib/active_record/connection_adapters/oracle_enhanced/lob.rb", "lib/active_record/connection_adapters/oracle_enhanced/oci_connection.rb", "lib/active_record/connection_adapters/oracle_enhanced/oci_quoting.rb", "lib/active_record/connection_adapters/oracle_enhanced/procedures.rb", "lib/active_record/connection_adapters/oracle_enhanced/quoting.rb", "lib/active_record/connection_adapters/oracle_enhanced/schema_creation.rb", "lib/active_record/connection_adapters/oracle_enhanced/schema_definitions.rb", "lib/active_record/connection_adapters/oracle_enhanced/schema_dumper.rb", "lib/active_record/connection_adapters/oracle_enhanced/schema_statements.rb", "lib/active_record/connection_adapters/oracle_enhanced/structure_dump.rb", "lib/active_record/connection_adapters/oracle_enhanced/type_metadata.rb", "lib/active_record/connection_adapters/oracle_enhanced/version.rb", "lib/active_record/connection_adapters/oracle_enhanced_adapter.rb", "lib/active_record/type", "lib/active_record/type/oracle_enhanced", "lib/active_record/type/oracle_enhanced/boolean.rb", "lib/active_record/type/oracle_enhanced/character_string.rb", "lib/active_record/type/oracle_enhanced/integer.rb", "lib/active_record/type/oracle_enhanced/json.rb", "lib/active_record/type/oracle_enhanced/national_character_string.rb", "lib/active_record/type/oracle_enhanced/national_character_text.rb", "lib/active_record/type/oracle_enhanced/raw.rb", "lib/active_record/type/oracle_enhanced/string.rb", "lib/active_record/type/oracle_enhanced/text.rb", "lib/active_record/type/oracle_enhanced/timestampltz.rb", "lib/active_record/type/oracle_enhanced/timestamptz.rb", "lib/activerecord-oracle_enhanced-adapter.rb", "lib/arel", "lib/arel/visitors", "lib/arel/visitors/oracle.rb", "lib/arel/visitors/oracle12.rb"]
  s.homepage = "http://github.com/rsim/oracle-enhanced"
  s.require_paths = ["lib"]
  s.summary = "Oracle enhanced adapter for ActiveRecord"
  s.test_files = Dir["spec/**/*"]
  s.add_runtime_dependency("activerecord", ["~> 7.0.0"])
  s.add_runtime_dependency("ruby-plsql", [">= 0.6.0"])
  if /java/.match?(RUBY_PLATFORM)
    s.platform = Gem::Platform.new("java")
  else
    s.add_runtime_dependency("ruby-oci8")
  end
end
