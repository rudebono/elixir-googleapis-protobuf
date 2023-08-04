defmodule Google.Cloud.Servicehealth.Logging.V1.EventLog.EventCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EVENT_CATEGORY_UNSPECIFIED, 0
  field :INCIDENT, 2
end

defmodule Google.Cloud.Servicehealth.Logging.V1.EventLog.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CLOSED, 2
end

defmodule Google.Cloud.Servicehealth.Logging.V1.EventLog.DetailedState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DETAILED_STATE_UNSPECIFIED, 0
  field :EMERGING, 1
  field :CONFIRMED, 2
  field :RESOLVED, 3
  field :MERGED, 4
end

defmodule Google.Cloud.Servicehealth.Logging.V1.EventLog.Relevance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RELEVANCE_UNSPECIFIED, 0
  field :UNKNOWN, 2
  field :NOT_IMPACTED, 6
  field :PARTIALLY_RELATED, 7
  field :RELATED, 8
  field :IMPACTED, 9
end

defmodule Google.Cloud.Servicehealth.Logging.V1.EventLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string

  field :category, 3,
    type: Google.Cloud.Servicehealth.Logging.V1.EventLog.EventCategory,
    enum: true

  field :state, 4, type: Google.Cloud.Servicehealth.Logging.V1.EventLog.State, enum: true

  field :detailed_state, 14,
    type: Google.Cloud.Servicehealth.Logging.V1.EventLog.DetailedState,
    json_name: "detailedState",
    enum: true

  field :impacted_products, 15, type: :string, json_name: "impactedProducts"
  field :impacted_locations, 6, type: :string, json_name: "impactedLocations"
  field :relevance, 7, type: Google.Cloud.Servicehealth.Logging.V1.EventLog.Relevance, enum: true
  field :parent_event, 8, type: :string, json_name: "parentEvent"
  field :update_time, 10, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :start_time, 11, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 12, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :next_update_time, 13, type: Google.Protobuf.Timestamp, json_name: "nextUpdateTime"
end