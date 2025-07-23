defmodule Google.Cloud.Discoveryengine.V1alpha.Condition.QueryTerm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :string
  field :full_match, 2, type: :bool, json_name: "fullMatch"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Condition.TimeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query_terms, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.Condition.QueryTerm,
    json_name: "queryTerms"

  field :active_time_range, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.Condition.TimeRange,
    json_name: "activeTimeRange"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Control.BoostAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :boost, 1, type: :float, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :data_store, 3, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Control.FilterAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :data_store, 2, type: :string, json_name: "dataStore", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Control.RedirectAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :redirect_uri, 1, type: :string, json_name: "redirectUri", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Control.SynonymsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :synonyms, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Control do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action, 0

  field :boost_action, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.Control.BoostAction,
    json_name: "boostAction",
    oneof: 0

  field :filter_action, 7,
    type: Google.Cloud.Discoveryengine.V1alpha.Control.FilterAction,
    json_name: "filterAction",
    oneof: 0

  field :redirect_action, 9,
    type: Google.Cloud.Discoveryengine.V1alpha.Control.RedirectAction,
    json_name: "redirectAction",
    oneof: 0

  field :synonyms_action, 10,
    type: Google.Cloud.Discoveryengine.V1alpha.Control.SynonymsAction,
    json_name: "synonymsAction",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :associated_serving_config_ids, 3,
    repeated: true,
    type: :string,
    json_name: "associatedServingConfigIds",
    deprecated: false

  field :solution_type, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.SolutionType,
    json_name: "solutionType",
    enum: true,
    deprecated: false

  field :use_cases, 8,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchUseCase,
    json_name: "useCases",
    enum: true

  field :conditions, 5, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Condition
end
