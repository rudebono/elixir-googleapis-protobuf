defmodule Google.Cloud.Eventarc.V1.Provider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :event_types, 3,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.EventType,
    json_name: "eventTypes",
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.EventType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :filtering_attributes, 3,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.FilteringAttribute,
    json_name: "filteringAttributes",
    deprecated: false

  field :event_schema_uri, 4, type: :string, json_name: "eventSchemaUri", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.FilteringAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :required, 3, type: :bool, deprecated: false

  field :path_pattern_supported, 4,
    type: :bool,
    json_name: "pathPatternSupported",
    deprecated: false
end
