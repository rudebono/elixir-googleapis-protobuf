defmodule Google.Cloud.Chronicle.V1.Watchlist.EntityPopulationMechanism.Manual do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Chronicle.V1.Watchlist.EntityPopulationMechanism do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :mechanism, 0

  field :manual, 1,
    type: Google.Cloud.Chronicle.V1.Watchlist.EntityPopulationMechanism.Manual,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.Watchlist.EntityCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user, 1, type: :int32, deprecated: false
  field :asset, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.Watchlist do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :multiplying_factor, 5, type: :float, json_name: "multiplyingFactor", deprecated: false

  field :entity_population_mechanism, 6,
    type: Google.Cloud.Chronicle.V1.Watchlist.EntityPopulationMechanism,
    json_name: "entityPopulationMechanism",
    deprecated: false

  field :entity_count, 7,
    type: Google.Cloud.Chronicle.V1.Watchlist.EntityCount,
    json_name: "entityCount",
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :watchlist_user_preferences, 10,
    type: Google.Cloud.Chronicle.V1.WatchlistUserPreferences,
    json_name: "watchlistUserPreferences",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.WatchlistUserPreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pinned, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.GetWatchlistRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListWatchlistsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListWatchlistsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :watchlists, 1,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.Watchlist,
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.CreateWatchlistRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :watchlist_id, 2, type: :string, json_name: "watchlistId", deprecated: false
  field :watchlist, 3, type: Google.Cloud.Chronicle.V1.Watchlist, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.UpdateWatchlistRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :watchlist, 1, type: Google.Cloud.Chronicle.V1.Watchlist, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.DeleteWatchlistRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.EntityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.chronicle.v1.EntityService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetWatchlist,
      Google.Cloud.Chronicle.V1.GetWatchlistRequest,
      Google.Cloud.Chronicle.V1.Watchlist

  rpc :ListWatchlists,
      Google.Cloud.Chronicle.V1.ListWatchlistsRequest,
      Google.Cloud.Chronicle.V1.ListWatchlistsResponse

  rpc :CreateWatchlist,
      Google.Cloud.Chronicle.V1.CreateWatchlistRequest,
      Google.Cloud.Chronicle.V1.Watchlist

  rpc :UpdateWatchlist,
      Google.Cloud.Chronicle.V1.UpdateWatchlistRequest,
      Google.Cloud.Chronicle.V1.Watchlist

  rpc :DeleteWatchlist, Google.Cloud.Chronicle.V1.DeleteWatchlistRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Chronicle.V1.EntityService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Chronicle.V1.EntityService.Service
end
