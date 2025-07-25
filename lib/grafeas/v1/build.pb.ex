defmodule Grafeas.V1.BuildNote do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :builder_version, 1, type: :string, json_name: "builderVersion"
end

defmodule Grafeas.V1.BuildOccurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :provenance, 1, type: Grafeas.V1.BuildProvenance
  field :provenance_bytes, 2, type: :string, json_name: "provenanceBytes"
  field :intoto_provenance, 3, type: Grafeas.V1.InTotoProvenance, json_name: "intotoProvenance"
  field :intoto_statement, 4, type: Grafeas.V1.InTotoStatement, json_name: "intotoStatement"

  field :in_toto_slsa_provenance_v1, 5,
    type: Grafeas.V1.InTotoSlsaProvenanceV1,
    json_name: "inTotoSlsaProvenanceV1"
end
