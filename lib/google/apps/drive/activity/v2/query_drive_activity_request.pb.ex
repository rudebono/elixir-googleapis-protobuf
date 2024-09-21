defmodule Google.Apps.Drive.Activity.V2.QueryDriveActivityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :key, 0

  field :item_name, 1, type: :string, json_name: "itemName", oneof: 0
  field :ancestor_name, 2, type: :string, json_name: "ancestorName", oneof: 0

  field :consolidation_strategy, 5,
    type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy,
    json_name: "consolidationStrategy"

  field :page_size, 6, type: :int32, json_name: "pageSize"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :filter, 8, type: :string
end

defmodule Google.Apps.Drive.Activity.V2.ConsolidationStrategy.NoConsolidation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Activity.V2.ConsolidationStrategy.Legacy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Activity.V2.ConsolidationStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :strategy, 0

  field :none, 1,
    type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.NoConsolidation,
    oneof: 0

  field :legacy, 2, type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.Legacy, oneof: 0
end