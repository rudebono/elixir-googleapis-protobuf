defmodule Google.Cloud.Retail.V2beta.Control do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :control, 0

  field :facet_spec, 3,
    type: Google.Cloud.Retail.V2beta.SearchRequest.FacetSpec,
    json_name: "facetSpec",
    oneof: 0,
    deprecated: true

  field :rule, 4, type: Google.Cloud.Retail.V2beta.Rule, oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :associated_serving_config_ids, 5,
    repeated: true,
    type: :string,
    json_name: "associatedServingConfigIds",
    deprecated: false

  field :solution_types, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.SolutionType,
    json_name: "solutionTypes",
    enum: true,
    deprecated: false

  field :search_solution_use_case, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.SearchSolutionUseCase,
    json_name: "searchSolutionUseCase",
    enum: true
end
