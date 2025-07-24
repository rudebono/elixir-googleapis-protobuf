defmodule Google.Cloud.Retail.V2alpha.PurgeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.PurgeProductsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Retail.V2alpha.PurgeProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.PurgeProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :purge_count, 1, type: :int64, json_name: "purgeCount"

  field :purge_sample, 2,
    repeated: true,
    type: :string,
    json_name: "purgeSample",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.PurgeUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.PurgeUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :purged_events_count, 1, type: :int64, json_name: "purgedEventsCount"
end
