defmodule Google.Cloud.Discoveryengine.V1.ServingConfig.MediaConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :demote_content_watched, 0

  field :content_watched_percentage_threshold, 2,
    type: :float,
    json_name: "contentWatchedPercentageThreshold",
    oneof: 0

  field :content_watched_seconds_threshold, 5,
    type: :float,
    json_name: "contentWatchedSecondsThreshold",
    oneof: 0

  field :demotion_event_type, 1, type: :string, json_name: "demotionEventType"

  field :demote_content_watched_past_days, 37,
    type: :int32,
    json_name: "demoteContentWatchedPastDays",
    deprecated: false

  field :content_freshness_cutoff_days, 4, type: :int32, json_name: "contentFreshnessCutoffDays"
end

defmodule Google.Cloud.Discoveryengine.V1.ServingConfig.GenericConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content_search_spec, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec,
    json_name: "contentSearchSpec"
end

defmodule Google.Cloud.Discoveryengine.V1.ServingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :vertical_config, 0

  field :media_config, 7,
    type: Google.Cloud.Discoveryengine.V1.ServingConfig.MediaConfig,
    json_name: "mediaConfig",
    oneof: 0

  field :generic_config, 10,
    type: Google.Cloud.Discoveryengine.V1.ServingConfig.GenericConfig,
    json_name: "genericConfig",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :solution_type, 3,
    type: Google.Cloud.Discoveryengine.V1.SolutionType,
    json_name: "solutionType",
    enum: true,
    deprecated: false

  field :model_id, 4, type: :string, json_name: "modelId"
  field :diversity_level, 5, type: :string, json_name: "diversityLevel"
  field :ranking_expression, 21, type: :string, json_name: "rankingExpression"

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :filter_control_ids, 11, repeated: true, type: :string, json_name: "filterControlIds"
  field :boost_control_ids, 12, repeated: true, type: :string, json_name: "boostControlIds"
  field :redirect_control_ids, 14, repeated: true, type: :string, json_name: "redirectControlIds"
  field :synonyms_control_ids, 15, repeated: true, type: :string, json_name: "synonymsControlIds"

  field :oneway_synonyms_control_ids, 16,
    repeated: true,
    type: :string,
    json_name: "onewaySynonymsControlIds"

  field :dissociate_control_ids, 17,
    repeated: true,
    type: :string,
    json_name: "dissociateControlIds"

  field :replacement_control_ids, 18,
    repeated: true,
    type: :string,
    json_name: "replacementControlIds"

  field :ignore_control_ids, 19, repeated: true, type: :string, json_name: "ignoreControlIds"
  field :promote_control_ids, 26, repeated: true, type: :string, json_name: "promoteControlIds"
end
