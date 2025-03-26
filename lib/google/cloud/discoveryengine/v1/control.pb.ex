defmodule Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec.AttributeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ATTRIBUTE_TYPE_UNSPECIFIED, 0
  field :NUMERICAL, 1
  field :FRESHNESS, 2
end

defmodule Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec.InterpolationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INTERPOLATION_TYPE_UNSPECIFIED, 0
  field :LINEAR, 1
end

defmodule Google.Cloud.Discoveryengine.V1.Condition.QueryTerm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :string
  field :full_match, 2, type: :bool, json_name: "fullMatch"
end

defmodule Google.Cloud.Discoveryengine.V1.Condition.TimeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Discoveryengine.V1.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query_terms, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Condition.QueryTerm,
    json_name: "queryTerms"

  field :active_time_range, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Condition.TimeRange,
    json_name: "activeTimeRange"

  field :query_regex, 4, type: :string, json_name: "queryRegex", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec.ControlPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attribute_value, 1, type: :string, json_name: "attributeValue", deprecated: false
  field :boost_amount, 2, type: :float, json_name: "boostAmount", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false

  field :attribute_type, 2,
    type:
      Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec.AttributeType,
    json_name: "attributeType",
    enum: true,
    deprecated: false

  field :interpolation_type, 3,
    type:
      Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec.InterpolationType,
    json_name: "interpolationType",
    enum: true,
    deprecated: false

  field :control_points, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec.ControlPoint,
    json_name: "controlPoints",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Control.BoostAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :boost_spec, 0

  field :fixed_boost, 4, type: :float, json_name: "fixedBoost", oneof: 0, deprecated: false

  field :interpolation_boost_spec, 5,
    type: Google.Cloud.Discoveryengine.V1.Control.BoostAction.InterpolationBoostSpec,
    json_name: "interpolationBoostSpec",
    oneof: 0,
    deprecated: false

  field :boost, 1, type: :float, deprecated: true
  field :filter, 2, type: :string, deprecated: false
  field :data_store, 3, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Control.FilterAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :data_store, 2, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Control.RedirectAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :redirect_uri, 1, type: :string, json_name: "redirectUri", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Control.SynonymsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :synonyms, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.Control.PromoteAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_store, 1, type: :string, json_name: "dataStore", deprecated: false

  field :search_link_promotion, 2,
    type: Google.Cloud.Discoveryengine.V1.SearchLinkPromotion,
    json_name: "searchLinkPromotion",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Control do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :action, 0

  field :boost_action, 6,
    type: Google.Cloud.Discoveryengine.V1.Control.BoostAction,
    json_name: "boostAction",
    oneof: 0

  field :filter_action, 7,
    type: Google.Cloud.Discoveryengine.V1.Control.FilterAction,
    json_name: "filterAction",
    oneof: 0

  field :redirect_action, 9,
    type: Google.Cloud.Discoveryengine.V1.Control.RedirectAction,
    json_name: "redirectAction",
    oneof: 0

  field :synonyms_action, 10,
    type: Google.Cloud.Discoveryengine.V1.Control.SynonymsAction,
    json_name: "synonymsAction",
    oneof: 0

  field :promote_action, 15,
    type: Google.Cloud.Discoveryengine.V1.Control.PromoteAction,
    json_name: "promoteAction",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :associated_serving_config_ids, 3,
    repeated: true,
    type: :string,
    json_name: "associatedServingConfigIds",
    deprecated: false

  field :solution_type, 4,
    type: Google.Cloud.Discoveryengine.V1.SolutionType,
    json_name: "solutionType",
    enum: true,
    deprecated: false

  field :use_cases, 8,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchUseCase,
    json_name: "useCases",
    enum: true

  field :conditions, 5, repeated: true, type: Google.Cloud.Discoveryengine.V1.Condition
end
