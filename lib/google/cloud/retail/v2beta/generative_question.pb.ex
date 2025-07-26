defmodule Google.Cloud.Retail.V2beta.GenerativeQuestionsFeatureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
  field :feature_enabled, 2, type: :bool, json_name: "featureEnabled", deprecated: false
  field :minimum_products, 3, type: :int32, json_name: "minimumProducts", deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.GenerativeQuestionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
  field :facet, 2, type: :string, deprecated: false
  field :generated_question, 3, type: :string, json_name: "generatedQuestion", deprecated: false
  field :final_question, 4, type: :string, json_name: "finalQuestion", deprecated: false

  field :example_values, 5,
    repeated: true,
    type: :string,
    json_name: "exampleValues",
    deprecated: false

  field :frequency, 6, type: :float, deprecated: false

  field :allowed_in_conversation, 7,
    type: :bool,
    json_name: "allowedInConversation",
    deprecated: false
end
