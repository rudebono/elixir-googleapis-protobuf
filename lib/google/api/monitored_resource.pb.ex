defmodule Google.Api.MonitoredResourceDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 5, type: :string
  field :type, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :labels, 4, repeated: true, type: Google.Api.LabelDescriptor
  field :launch_stage, 7, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true
end

defmodule Google.Api.MonitoredResource.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.MonitoredResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string
  field :labels, 2, repeated: true, type: Google.Api.MonitoredResource.LabelsEntry, map: true
end

defmodule Google.Api.MonitoredResourceMetadata.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.MonitoredResourceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :system_labels, 1, type: Google.Protobuf.Struct, json_name: "systemLabels"

  field :user_labels, 2,
    repeated: true,
    type: Google.Api.MonitoredResourceMetadata.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end
