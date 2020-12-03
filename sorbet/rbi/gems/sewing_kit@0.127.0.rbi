# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sewing_kit` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module SewingKit
  class << self
    def configuration; end
    def configure; end
  end
end

class SewingKit::Configuration
  def initialize; end

  def build_options; end
  def build_options=(_); end
  def dev_server_sewing_kit_bin; end
  def dev_server_sewing_kit_bin=(_); end
  def development_options; end
  def development_options=(_); end
  def log_level; end
  def log_level=(level); end
  def manifest_name; end
  def manifest_name=(_); end
  def manifest_path; end
  def manifest_path=(_); end
  def test_manifest_mode; end
  def test_manifest_mode=(mode); end
end

class SewingKit::Railtie < ::Rails::Railtie
end

SewingKit::VERSION = T.let(T.unsafe(nil), String)

module SewingKit::Webpack
end

class SewingKit::Webpack::Compiler
  def compile; end

  private

  def command; end
  def environment; end
  def node_env; end
  def node_installed?; end
  def options; end
end

class SewingKit::Webpack::Compiler::NodeNotInstalled < ::StandardError
  def initialize; end
end

class SewingKit::Webpack::Dev
  def pid; end
  def pid=(_); end
  def start; end

  private

  def command; end
  def debug_mode?; end
  def detach; end
  def focus_sections; end
  def handle_exit; end
  def heap_config; end
  def log_level; end
  def log_level_from_rails; end
  def options; end
  def sewing_kit_bin; end
  def spawn; end
end

class SewingKit::Webpack::Dev::NodeSewingKitNotInstalled < ::StandardError
  def initialize; end
end

module SewingKit::Webpack::Helper
  def sewing_kit_assets(entrypoint_name, extension: T.unsafe(nil)); end
  def sewing_kit_assets_bundle_name; end
  def sewing_kit_link_tag(*assets); end
  def sewing_kit_script_tag(*assets); end

  private

  def create_asset_tag(tag_type, asset, tag_options); end
  def dll_asset; end
  def raise_unknown_error?(assets); end
  def serve_development_assets?; end
end

class SewingKit::Webpack::Helper::Asset < ::Struct
  def integrity; end
  def integrity=(_); end
  def path; end
  def path=(_); end

  class << self
    def [](*_); end
    def inspect; end
    def members; end
    def new(*_); end
  end
end

class SewingKit::Webpack::Helper::UnknownAssetError < ::StandardError
end

class SewingKit::Webpack::Manifest
  class << self
    def asset_bundle_name(user_agent); end
    def asset_dependencies(entrypoint_name, user_agent); end
    def clear_cache!; end
    def instance; end
    def manifest; end

    private

    def mode; end
    def simulate_production?; end
    def skip_assets?; end
  end
end

class SewingKit::Webpack::Manifest::Base
  def initialize; end

  def clear_cache!; end
  def manifest; end

  protected

  def load_metadata_from_fs(path); end

  private

  def parse_metadata(json); end
end

class SewingKit::Webpack::Manifest::Development < ::SewingKit::Webpack::Manifest::Base
  def initialize; end

  def asset_bundle_name(_user_agent); end
  def asset_dependencies(entrypoint_name, _user_agent); end
  def clear_cache!; end
  def load_metadata; end
  def manifest; end
  def metadata; end

  private

  def load_metadata_from_node; end
  def normalize_metadata(maybe_array_metadata); end
end

class SewingKit::Webpack::Manifest::ManifestLoadError < ::StandardError
  def initialize(path, cause); end
end

class SewingKit::Webpack::Manifest::ManifestParseError < ::StandardError
  def initialize(cause); end
end

class SewingKit::Webpack::Manifest::NodeSewingKitManifestMissing < ::StandardError
  def initialize(node_error_message); end
end

class SewingKit::Webpack::Manifest::OnlyUseInProductionError < ::StandardError
  def initialize; end
end

class SewingKit::Webpack::Manifest::Production < ::SewingKit::Webpack::Manifest::Base
  def initialize; end

  def asset_bundle_name(user_agent); end
  def asset_dependencies(entrypoint_name, user_agent); end
  def metadata; end

  private

  def baseline(consolidated_metadata); end
  def find_matching_metadata(consolidated_metadata, user_agent); end
  def load_metadata; end
  def metadata_for(user_agent); end
  def metadata_matches?(metadata_item, user_agent); end
  def path; end
end

class SewingKit::Webpack::Manifest::TestWithNoAssets < ::SewingKit::Webpack::Manifest::Base
  def asset_bundle_name(_user_agent); end
  def asset_dependencies(_entrypoint_name, _user_agent); end
  def manifest; end
end

class SewingKit::Webpack::NodeSewingKitNotRunnable < ::StandardError
  def initialize(mode, cause = T.unsafe(nil)); end

  def highlight(message); end
end

class SewingKit::Webpack::Server
  def start; end

  private

  def command; end
  def default_entrypoint; end
end

class SewingKit::Webpack::Server::DefaultEntrypointMissing < ::StandardError
  def initialize; end
end

module UserAgentParser
  class << self
    def parse(user_agent_string, options = T.unsafe(nil)); end
  end
end

UserAgentParser::DefaultPatternsPath = T.let(T.unsafe(nil), String)

class UserAgentParser::Parser
  def initialize(options = T.unsafe(nil)); end

  def parse(user_agent); end
  def patterns_path; end

  private

  def device_from_pattern_match(pattern, match); end
  def first_pattern_match(patterns, value); end
  def from_pattern_match(keys, pattern, match); end
  def interpolate(replacement, match); end
  def load_patterns(path); end
  def os_from_pattern_match(pattern, match); end
  def parse_device(user_agent); end
  def parse_os(user_agent); end
  def parse_ua(user_agent, os = T.unsafe(nil), device = T.unsafe(nil)); end
  def user_agent_from_pattern_match(pattern, match, os = T.unsafe(nil), device = T.unsafe(nil)); end
  def version_from_segments(*segments); end

  class << self
    def load_patterns(path); end
  end
end

class UserAgentParser::Parser::Patterns
  def initialize; end

  def get(path = T.unsafe(nil)); end

  private

  def load_and_parse(path); end
end
