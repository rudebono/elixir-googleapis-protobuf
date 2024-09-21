defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSpecSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :annotation_specs, 4,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpecs"

  field :blocking_resources, 5, repeated: true, type: :string, json_name: "blockingResources"
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string
end