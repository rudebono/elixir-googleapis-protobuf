defmodule Google.Cloud.Aiplatform.V1beta1.SavedQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :metadata, 12, type: Google.Protobuf.Value

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :annotation_filter, 5, type: :string, json_name: "annotationFilter", deprecated: false
  field :problem_type, 6, type: :string, json_name: "problemType", deprecated: false

  field :annotation_spec_count, 10,
    type: :int32,
    json_name: "annotationSpecCount",
    deprecated: false

  field :etag, 8, type: :string

  field :support_automl_training, 9,
    type: :bool,
    json_name: "supportAutomlTraining",
    deprecated: false
end
