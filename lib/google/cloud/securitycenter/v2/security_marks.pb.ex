defmodule Google.Cloud.Securitycenter.V2.SecurityMarks.MarksEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.SecurityMarks do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

  field :marks, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.SecurityMarks.MarksEntry,
    map: true

  field :canonical_name, 3, type: :string, json_name: "canonicalName"
end