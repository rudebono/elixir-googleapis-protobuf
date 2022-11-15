defmodule Google.Api.ClientLibraryOrganization do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CLIENT_LIBRARY_ORGANIZATION_UNSPECIFIED, 0
  field :CLOUD, 1
  field :ADS, 2
  field :PHOTOS, 3
  field :STREET_VIEW, 4
end

defmodule Google.Api.ClientLibraryDestination do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CLIENT_LIBRARY_DESTINATION_UNSPECIFIED, 0
  field :GITHUB, 10
  field :PACKAGE_MANAGER, 20
end

defmodule Google.Api.CommonLanguageSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reference_docs_uri, 1, type: :string, json_name: "referenceDocsUri"
  field :destinations, 2, repeated: true, type: Google.Api.ClientLibraryDestination, enum: true
end

defmodule Google.Api.ClientLibrarySettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
  field :launch_stage, 2, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true
  field :rest_numeric_enums, 3, type: :bool, json_name: "restNumericEnums"
  field :java_settings, 21, type: Google.Api.JavaSettings, json_name: "javaSettings"
  field :cpp_settings, 22, type: Google.Api.CppSettings, json_name: "cppSettings"
  field :php_settings, 23, type: Google.Api.PhpSettings, json_name: "phpSettings"
  field :python_settings, 24, type: Google.Api.PythonSettings, json_name: "pythonSettings"
  field :node_settings, 25, type: Google.Api.NodeSettings, json_name: "nodeSettings"
  field :dotnet_settings, 26, type: Google.Api.DotnetSettings, json_name: "dotnetSettings"
  field :ruby_settings, 27, type: Google.Api.RubySettings, json_name: "rubySettings"
  field :go_settings, 28, type: Google.Api.GoSettings, json_name: "goSettings"
end

defmodule Google.Api.Publishing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :method_settings, 2,
    repeated: true,
    type: Google.Api.MethodSettings,
    json_name: "methodSettings"

  field :new_issue_uri, 101, type: :string, json_name: "newIssueUri"
  field :documentation_uri, 102, type: :string, json_name: "documentationUri"
  field :api_short_name, 103, type: :string, json_name: "apiShortName"
  field :github_label, 104, type: :string, json_name: "githubLabel"

  field :codeowner_github_teams, 105,
    repeated: true,
    type: :string,
    json_name: "codeownerGithubTeams"

  field :doc_tag_prefix, 106, type: :string, json_name: "docTagPrefix"
  field :organization, 107, type: Google.Api.ClientLibraryOrganization, enum: true

  field :library_settings, 109,
    repeated: true,
    type: Google.Api.ClientLibrarySettings,
    json_name: "librarySettings"
end

defmodule Google.Api.JavaSettings.ServiceClassNamesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.JavaSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :library_package, 1, type: :string, json_name: "libraryPackage"

  field :service_class_names, 2,
    repeated: true,
    type: Google.Api.JavaSettings.ServiceClassNamesEntry,
    json_name: "serviceClassNames",
    map: true

  field :common, 3, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.CppSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common, 1, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.PhpSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common, 1, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.PythonSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common, 1, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.NodeSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common, 1, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.DotnetSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common, 1, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.RubySettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common, 1, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.GoSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :common, 1, type: Google.Api.CommonLanguageSettings
end

defmodule Google.Api.MethodSettings.LongRunning do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :initial_poll_delay, 1, type: Google.Protobuf.Duration, json_name: "initialPollDelay"
  field :poll_delay_multiplier, 2, type: :float, json_name: "pollDelayMultiplier"
  field :max_poll_delay, 3, type: Google.Protobuf.Duration, json_name: "maxPollDelay"
  field :total_poll_timeout, 4, type: Google.Protobuf.Duration, json_name: "totalPollTimeout"
end

defmodule Google.Api.MethodSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :selector, 1, type: :string
  field :long_running, 2, type: Google.Api.MethodSettings.LongRunning, json_name: "longRunning"
end

defmodule Google.Api.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  extend Google.Protobuf.MethodOptions, :method_signature, 1051,
    repeated: true,
    type: :string,
    json_name: "methodSignature"

  extend Google.Protobuf.ServiceOptions, :default_host, 1049,
    optional: true,
    type: :string,
    json_name: "defaultHost"

  extend Google.Protobuf.ServiceOptions, :oauth_scopes, 1050,
    optional: true,
    type: :string,
    json_name: "oauthScopes"
end