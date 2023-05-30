defmodule Google.Cloud.Datacatalog.V1.TaggedEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :entry, 0

  field :v1_entry, 1, type: Google.Cloud.Datacatalog.V1.Entry, json_name: "v1Entry", oneof: 0

  field :present_tags, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.Tag,
    json_name: "presentTags",
    deprecated: false

  field :absent_tags, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.Tag,
    json_name: "absentTags",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1.DumpItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :item, 0

  field :tagged_entry, 1,
    type: Google.Cloud.Datacatalog.V1.TaggedEntry,
    json_name: "taggedEntry",
    oneof: 0
end