defmodule Google.Ads.Admanager.V1.GetEntitySignalsMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListEntitySignalsMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.CreateEntitySignalsMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entity_signals_mapping, 2,
    type: Google.Ads.Admanager.V1.EntitySignalsMapping,
    json_name: "entitySignalsMapping",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.UpdateEntitySignalsMappingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entity_signals_mapping, 1,
    type: Google.Ads.Admanager.V1.EntitySignalsMapping,
    json_name: "entitySignalsMapping",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListEntitySignalsMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entity_signals_mappings, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.EntitySignalsMapping,
    json_name: "entitySignalsMappings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.BatchCreateEntitySignalsMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreateEntitySignalsMappingRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateEntitySignalsMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entity_signals_mappings, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.EntitySignalsMapping,
    json_name: "entitySignalsMappings"
end

defmodule Google.Ads.Admanager.V1.BatchUpdateEntitySignalsMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.UpdateEntitySignalsMappingRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateEntitySignalsMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :entity_signals_mappings, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.EntitySignalsMapping,
    json_name: "entitySignalsMappings"
end

defmodule Google.Ads.Admanager.V1.EntitySignalsMappingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.EntitySignalsMappingService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetEntitySignalsMapping,
      Google.Ads.Admanager.V1.GetEntitySignalsMappingRequest,
      Google.Ads.Admanager.V1.EntitySignalsMapping

  rpc :ListEntitySignalsMappings,
      Google.Ads.Admanager.V1.ListEntitySignalsMappingsRequest,
      Google.Ads.Admanager.V1.ListEntitySignalsMappingsResponse

  rpc :CreateEntitySignalsMapping,
      Google.Ads.Admanager.V1.CreateEntitySignalsMappingRequest,
      Google.Ads.Admanager.V1.EntitySignalsMapping

  rpc :UpdateEntitySignalsMapping,
      Google.Ads.Admanager.V1.UpdateEntitySignalsMappingRequest,
      Google.Ads.Admanager.V1.EntitySignalsMapping

  rpc :BatchCreateEntitySignalsMappings,
      Google.Ads.Admanager.V1.BatchCreateEntitySignalsMappingsRequest,
      Google.Ads.Admanager.V1.BatchCreateEntitySignalsMappingsResponse

  rpc :BatchUpdateEntitySignalsMappings,
      Google.Ads.Admanager.V1.BatchUpdateEntitySignalsMappingsRequest,
      Google.Ads.Admanager.V1.BatchUpdateEntitySignalsMappingsResponse
end

defmodule Google.Ads.Admanager.V1.EntitySignalsMappingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.EntitySignalsMappingService.Service
end
