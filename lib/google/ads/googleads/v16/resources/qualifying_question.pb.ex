defmodule Google.Ads.Googleads.V16.Resources.QualifyingQuestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :qualifying_question_id, 2,
    type: :int64,
    json_name: "qualifyingQuestionId",
    deprecated: false

  field :locale, 3, type: :string, deprecated: false
  field :text, 4, type: :string, deprecated: false
end