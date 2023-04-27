defmodule Google.Cloud.Dataplex.V1.Trigger.OnDemand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Dataplex.V1.Trigger.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cron, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Trigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :mode, 0

  field :on_demand, 100,
    type: Google.Cloud.Dataplex.V1.Trigger.OnDemand,
    json_name: "onDemand",
    oneof: 0

  field :schedule, 101, type: Google.Cloud.Dataplex.V1.Trigger.Schedule, oneof: 0
end

defmodule Google.Cloud.Dataplex.V1.DataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :entity, 100, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ScannedData.IncrementalField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: :string
  field :start, 2, type: :string
  field :end, 3, type: :string
end

defmodule Google.Cloud.Dataplex.V1.ScannedData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data_range, 0

  field :incremental_field, 1,
    type: Google.Cloud.Dataplex.V1.ScannedData.IncrementalField,
    json_name: "incrementalField",
    oneof: 0
end