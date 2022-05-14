defmodule Google.Cloud.Retail.V2beta.PurgeMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Retail.V2beta.PurgeUserEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end
defmodule Google.Cloud.Retail.V2beta.PurgeUserEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :purged_events_count, 1, type: :int64, json_name: "purgedEventsCount"
end
