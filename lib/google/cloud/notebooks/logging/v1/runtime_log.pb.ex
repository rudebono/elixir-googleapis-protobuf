defmodule Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :RUNTIME_STATE_CHANGE_EVENT, 1
end

defmodule Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.DetailsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.Logging.V1.RuntimeEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.EventType,
    enum: true,
    deprecated: false

  field :details, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.DetailsEntry,
    map: true,
    deprecated: false
end
