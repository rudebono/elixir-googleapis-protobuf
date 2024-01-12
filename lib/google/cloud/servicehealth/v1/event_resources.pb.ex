defmodule Google.Cloud.Servicehealth.V1.EventView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EVENT_VIEW_UNSPECIFIED, 0
  field :EVENT_VIEW_BASIC, 1
  field :EVENT_VIEW_FULL, 2
end

defmodule Google.Cloud.Servicehealth.V1.OrganizationEventView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ORGANIZATION_EVENT_VIEW_UNSPECIFIED, 0
  field :ORGANIZATION_EVENT_VIEW_BASIC, 1
  field :ORGANIZATION_EVENT_VIEW_FULL, 2
end

defmodule Google.Cloud.Servicehealth.V1.Event.EventCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EVENT_CATEGORY_UNSPECIFIED, 0
  field :INCIDENT, 2
end

defmodule Google.Cloud.Servicehealth.V1.Event.DetailedCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DETAILED_CATEGORY_UNSPECIFIED, 0
  field :CONFIRMED_INCIDENT, 1
  field :EMERGING_INCIDENT, 2
end

defmodule Google.Cloud.Servicehealth.V1.Event.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CLOSED, 2
end

defmodule Google.Cloud.Servicehealth.V1.Event.DetailedState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DETAILED_STATE_UNSPECIFIED, 0
  field :EMERGING, 1
  field :CONFIRMED, 2
  field :RESOLVED, 3
  field :MERGED, 4
  field :AUTO_CLOSED, 9
  field :FALSE_POSITIVE, 10
end

defmodule Google.Cloud.Servicehealth.V1.Event.Relevance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RELEVANCE_UNSPECIFIED, 0
  field :UNKNOWN, 2
  field :NOT_IMPACTED, 6
  field :PARTIALLY_RELATED, 7
  field :RELATED, 8
  field :IMPACTED, 9
end

defmodule Google.Cloud.Servicehealth.V1.OrganizationEvent.EventCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EVENT_CATEGORY_UNSPECIFIED, 0
  field :INCIDENT, 2
end

defmodule Google.Cloud.Servicehealth.V1.OrganizationEvent.DetailedCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DETAILED_CATEGORY_UNSPECIFIED, 0
  field :CONFIRMED_INCIDENT, 1
  field :EMERGING_INCIDENT, 2
end

defmodule Google.Cloud.Servicehealth.V1.OrganizationEvent.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CLOSED, 2
end

defmodule Google.Cloud.Servicehealth.V1.OrganizationEvent.DetailedState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DETAILED_STATE_UNSPECIFIED, 0
  field :EMERGING, 1
  field :CONFIRMED, 2
  field :RESOLVED, 3
  field :MERGED, 4
  field :AUTO_CLOSED, 9
  field :FALSE_POSITIVE, 10
end

defmodule Google.Cloud.Servicehealth.V1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :category, 4,
    type: Google.Cloud.Servicehealth.V1.Event.EventCategory,
    enum: true,
    deprecated: false

  field :detailed_category, 21,
    type: Google.Cloud.Servicehealth.V1.Event.DetailedCategory,
    json_name: "detailedCategory",
    enum: true,
    deprecated: false

  field :state, 5, type: Google.Cloud.Servicehealth.V1.Event.State, enum: true, deprecated: false

  field :detailed_state, 19,
    type: Google.Cloud.Servicehealth.V1.Event.DetailedState,
    json_name: "detailedState",
    enum: true,
    deprecated: false

  field :event_impacts, 20,
    repeated: true,
    type: Google.Cloud.Servicehealth.V1.EventImpact,
    json_name: "eventImpacts"

  field :relevance, 8,
    type: Google.Cloud.Servicehealth.V1.Event.Relevance,
    enum: true,
    deprecated: false

  field :updates, 9,
    repeated: true,
    type: Google.Cloud.Servicehealth.V1.EventUpdate,
    deprecated: false

  field :parent_event, 10, type: :string, json_name: "parentEvent", deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :start_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 14, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :next_update_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "nextUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.OrganizationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :category, 4,
    type: Google.Cloud.Servicehealth.V1.OrganizationEvent.EventCategory,
    enum: true,
    deprecated: false

  field :detailed_category, 17,
    type: Google.Cloud.Servicehealth.V1.OrganizationEvent.DetailedCategory,
    json_name: "detailedCategory",
    enum: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Servicehealth.V1.OrganizationEvent.State,
    enum: true,
    deprecated: false

  field :detailed_state, 16,
    type: Google.Cloud.Servicehealth.V1.OrganizationEvent.DetailedState,
    json_name: "detailedState",
    enum: true,
    deprecated: false

  field :event_impacts, 15,
    repeated: true,
    type: Google.Cloud.Servicehealth.V1.EventImpact,
    json_name: "eventImpacts",
    deprecated: false

  field :updates, 8,
    repeated: true,
    type: Google.Cloud.Servicehealth.V1.EventUpdate,
    deprecated: false

  field :parent_event, 9, type: :string, json_name: "parentEvent", deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :start_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 13, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :next_update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "nextUpdateTime",
    deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.EventUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :symptom, 4, type: :string, deprecated: false
  field :workaround, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location_name, 1, type: :string, json_name: "locationName"
end

defmodule Google.Cloud.Servicehealth.V1.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :product_name, 1, type: :string, json_name: "productName"
end

defmodule Google.Cloud.Servicehealth.V1.EventImpact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :product, 1, type: Google.Cloud.Servicehealth.V1.Product
  field :location, 2, type: Google.Cloud.Servicehealth.V1.Location
end

defmodule Google.Cloud.Servicehealth.V1.OrganizationImpact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :events, 2, repeated: true, type: :string, deprecated: false
  field :asset, 3, type: Google.Cloud.Servicehealth.V1.Asset, deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset_name, 1, type: :string, json_name: "assetName", deprecated: false
  field :asset_type, 2, type: :string, json_name: "assetType", deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.ListEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :view, 6, type: Google.Cloud.Servicehealth.V1.EventView, enum: true, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.ListEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :events, 1, repeated: true, type: Google.Cloud.Servicehealth.V1.Event, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.GetEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.ListOrganizationEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false

  field :view, 6,
    type: Google.Cloud.Servicehealth.V1.OrganizationEventView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.ListOrganizationEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :organization_events, 1,
    repeated: true,
    type: Google.Cloud.Servicehealth.V1.OrganizationEvent,
    json_name: "organizationEvents",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.GetOrganizationEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.ListOrganizationImpactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.ListOrganizationImpactsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :organization_impacts, 1,
    repeated: true,
    type: Google.Cloud.Servicehealth.V1.OrganizationImpact,
    json_name: "organizationImpacts",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicehealth.V1.GetOrganizationImpactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end