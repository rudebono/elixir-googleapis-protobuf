defmodule Google.Cloud.Securitycenter.V1.ExternalSystem.TicketInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :assignee, 2, type: :string
  field :description, 3, type: :string
  field :uri, 4, type: :string
  field :status, 5, type: :string
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Securitycenter.V1.ExternalSystem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :assignees, 2, repeated: true, type: :string
  field :external_uid, 3, type: :string, json_name: "externalUid"
  field :status, 4, type: :string

  field :external_system_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "externalSystemUpdateTime"

  field :case_uri, 6, type: :string, json_name: "caseUri"
  field :case_priority, 7, type: :string, json_name: "casePriority"
  field :case_sla, 9, type: Google.Protobuf.Timestamp, json_name: "caseSla"
  field :case_create_time, 10, type: Google.Protobuf.Timestamp, json_name: "caseCreateTime"
  field :case_close_time, 11, type: Google.Protobuf.Timestamp, json_name: "caseCloseTime"

  field :ticket_info, 8,
    type: Google.Cloud.Securitycenter.V1.ExternalSystem.TicketInfo,
    json_name: "ticketInfo"
end