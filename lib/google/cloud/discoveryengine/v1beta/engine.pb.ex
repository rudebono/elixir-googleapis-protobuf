defmodule Google.Cloud.Discoveryengine.V1beta.Engine.SearchEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_tier, 1,
    type: Google.Cloud.Discoveryengine.V1beta.SearchTier,
    json_name: "searchTier",
    enum: true

  field :search_add_ons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchAddOn,
    json_name: "searchAddOns",
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1beta.Engine.ChatEngineConfig.AgentCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :business, 1, type: :string
  field :default_language_code, 2, type: :string, json_name: "defaultLanguageCode"
  field :time_zone, 3, type: :string, json_name: "timeZone", deprecated: false
  field :location, 4, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1beta.Engine.ChatEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :agent_creation_config, 1,
    type: Google.Cloud.Discoveryengine.V1beta.Engine.ChatEngineConfig.AgentCreationConfig,
    json_name: "agentCreationConfig"

  field :dialogflow_agent_to_link, 2, type: :string, json_name: "dialogflowAgentToLink"
end

defmodule Google.Cloud.Discoveryengine.V1beta.Engine.CommonConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :company_name, 1, type: :string, json_name: "companyName"
end

defmodule Google.Cloud.Discoveryengine.V1beta.Engine.ChatEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dialogflow_agent, 1, type: :string, json_name: "dialogflowAgent"
end

defmodule Google.Cloud.Discoveryengine.V1beta.Engine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :engine_config, 0

  oneof :engine_metadata, 1

  field :chat_engine_config, 11,
    type: Google.Cloud.Discoveryengine.V1beta.Engine.ChatEngineConfig,
    json_name: "chatEngineConfig",
    oneof: 0

  field :search_engine_config, 13,
    type: Google.Cloud.Discoveryengine.V1beta.Engine.SearchEngineConfig,
    json_name: "searchEngineConfig",
    oneof: 0

  field :chat_engine_metadata, 12,
    type: Google.Cloud.Discoveryengine.V1beta.Engine.ChatEngineMetadata,
    json_name: "chatEngineMetadata",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :data_store_ids, 5, repeated: true, type: :string, json_name: "dataStoreIds"

  field :solution_type, 6,
    type: Google.Cloud.Discoveryengine.V1beta.SolutionType,
    json_name: "solutionType",
    enum: true,
    deprecated: false

  field :industry_vertical, 16,
    type: Google.Cloud.Discoveryengine.V1beta.IndustryVertical,
    json_name: "industryVertical",
    enum: true

  field :common_config, 15,
    type: Google.Cloud.Discoveryengine.V1beta.Engine.CommonConfig,
    json_name: "commonConfig"

  field :disable_analytics, 26, type: :bool, json_name: "disableAnalytics", deprecated: false
end
