defmodule Google.Cloud.Retail.V2alpha.Control do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          control:
            {:facet_spec, Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec.t() | nil}
            | {:rule, Google.Cloud.Retail.V2alpha.Rule.t() | nil},
          name: String.t(),
          display_name: String.t(),
          associated_serving_config_ids: [String.t()],
          solution_types: [Google.Cloud.Retail.V2alpha.SolutionType.t()],
          search_solution_use_case: [Google.Cloud.Retail.V2alpha.SearchSolutionUseCase.t()]
        }

  defstruct control: nil,
            name: "",
            display_name: "",
            associated_serving_config_ids: [],
            solution_types: [],
            search_solution_use_case: []

  oneof :control, 0

  field :facet_spec, 3,
    type: Google.Cloud.Retail.V2alpha.SearchRequest.FacetSpec,
    json_name: "facetSpec",
    oneof: 0

  field :rule, 4, type: Google.Cloud.Retail.V2alpha.Rule, oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :associated_serving_config_ids, 5,
    repeated: true,
    type: :string,
    json_name: "associatedServingConfigIds",
    deprecated: false

  field :solution_types, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SolutionType,
    json_name: "solutionTypes",
    enum: true,
    deprecated: false

  field :search_solution_use_case, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.SearchSolutionUseCase,
    json_name: "searchSolutionUseCase",
    enum: true,
    deprecated: false
end
