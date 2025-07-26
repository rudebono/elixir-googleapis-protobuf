defmodule Google.Cloud.Discoveryengine.V1beta.SampleQuery.QueryEntry.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string
  field :page_numbers, 2, repeated: true, type: :int32, json_name: "pageNumbers"
  field :score, 3, proto3_optional: true, type: :double
end

defmodule Google.Cloud.Discoveryengine.V1beta.SampleQuery.QueryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false

  field :targets, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuery.QueryEntry.Target
end

defmodule Google.Cloud.Discoveryengine.V1beta.SampleQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :content, 0

  field :query_entry, 2,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuery.QueryEntry,
    json_name: "queryEntry",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
