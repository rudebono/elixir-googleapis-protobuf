defmodule Google.Cloud.Retail.V2beta.ServingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          model_id: String.t(),
          price_reranking_level: String.t(),
          facet_control_ids: [String.t()],
          dynamic_facet_spec: Google.Cloud.Retail.V2beta.SearchRequest.DynamicFacetSpec.t() | nil,
          boost_control_ids: [String.t()],
          filter_control_ids: [String.t()],
          redirect_control_ids: [String.t()],
          twoway_synonyms_control_ids: [String.t()],
          oneway_synonyms_control_ids: [String.t()],
          do_not_associate_control_ids: [String.t()],
          replacement_control_ids: [String.t()],
          ignore_control_ids: [String.t()],
          diversity_level: String.t(),
          enable_category_filter_level: String.t(),
          solution_types: [Google.Cloud.Retail.V2beta.SolutionType.t()]
        }

  defstruct name: "",
            display_name: "",
            model_id: "",
            price_reranking_level: "",
            facet_control_ids: [],
            dynamic_facet_spec: nil,
            boost_control_ids: [],
            filter_control_ids: [],
            redirect_control_ids: [],
            twoway_synonyms_control_ids: [],
            oneway_synonyms_control_ids: [],
            do_not_associate_control_ids: [],
            replacement_control_ids: [],
            ignore_control_ids: [],
            diversity_level: "",
            enable_category_filter_level: "",
            solution_types: []

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :model_id, 3, type: :string, json_name: "modelId"
  field :price_reranking_level, 4, type: :string, json_name: "priceRerankingLevel"
  field :facet_control_ids, 5, repeated: true, type: :string, json_name: "facetControlIds"

  field :dynamic_facet_spec, 6,
    type: Google.Cloud.Retail.V2beta.SearchRequest.DynamicFacetSpec,
    json_name: "dynamicFacetSpec"

  field :boost_control_ids, 7, repeated: true, type: :string, json_name: "boostControlIds"
  field :filter_control_ids, 9, repeated: true, type: :string, json_name: "filterControlIds"
  field :redirect_control_ids, 10, repeated: true, type: :string, json_name: "redirectControlIds"

  field :twoway_synonyms_control_ids, 18,
    repeated: true,
    type: :string,
    json_name: "twowaySynonymsControlIds"

  field :oneway_synonyms_control_ids, 12,
    repeated: true,
    type: :string,
    json_name: "onewaySynonymsControlIds"

  field :do_not_associate_control_ids, 13,
    repeated: true,
    type: :string,
    json_name: "doNotAssociateControlIds"

  field :replacement_control_ids, 14,
    repeated: true,
    type: :string,
    json_name: "replacementControlIds"

  field :ignore_control_ids, 15, repeated: true, type: :string, json_name: "ignoreControlIds"
  field :diversity_level, 8, type: :string, json_name: "diversityLevel"
  field :enable_category_filter_level, 16, type: :string, json_name: "enableCategoryFilterLevel"

  field :solution_types, 19,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.SolutionType,
    json_name: "solutionTypes",
    enum: true,
    deprecated: false
end
