defmodule Google.Ai.Generativelanguage.V1beta.CitationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :citation_sources, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.CitationSource,
    json_name: "citationSources"
end

defmodule Google.Ai.Generativelanguage.V1beta.CitationSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_index, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "startIndex",
    deprecated: false

  field :end_index, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "endIndex",
    deprecated: false

  field :uri, 3, proto3_optional: true, type: :string, deprecated: false
  field :license, 4, proto3_optional: true, type: :string, deprecated: false
end
