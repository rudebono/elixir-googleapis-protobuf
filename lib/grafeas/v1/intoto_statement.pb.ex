defmodule Grafeas.V1.InTotoStatement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :predicate, 0

  field :type, 1, type: :string, json_name: "_type"
  field :subject, 2, repeated: true, type: Grafeas.V1.Subject
  field :predicate_type, 3, type: :string, json_name: "predicateType"
  field :provenance, 4, type: Grafeas.V1.InTotoProvenance, oneof: 0

  field :slsa_provenance, 5,
    type: Grafeas.V1.SlsaProvenance,
    json_name: "slsaProvenance",
    oneof: 0

  field :slsa_provenance_zero_two, 6,
    type: Grafeas.V1.SlsaProvenanceZeroTwo,
    json_name: "slsaProvenanceZeroTwo",
    oneof: 0
end

defmodule Grafeas.V1.Subject.DigestEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1.Subject do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :digest, 2, repeated: true, type: Grafeas.V1.Subject.DigestEntry, map: true
end